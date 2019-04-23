//
//  WMPoiCell.m
//  WMHomelist
//
//  Created by yan on 2018/11/14.
//  Copyright © 2018年 yan. All rights reserved.
//

#import "WMPoiListCell.h"
#import "WMGListTextView.h"

@interface WMPoiListCell ()
@property (nonatomic, strong) WMGListTextView *drawView;
@end

@implementation WMPoiListCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _drawView = [[WMGListTextView alloc] initWithFrame:CGRectZero];
        [self.contentView addSubview:_drawView];
        
    }
    return self;
}

- (void)setupCellData:(WMPoiListCellData *)cellData {
    [super setupCellData:cellData];
    _drawView.frame = CGRectMake(0, 0, cellData.cellWidth, cellData.cellHeight);
    _drawView.drawerDates = cellData.mutableAttributedTexts;
}

@end
