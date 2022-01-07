
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {void* max_write_zeroes_sectors; void* max_write_same_sectors; void* max_dev_sectors; void* max_sectors; void* max_segment_size; void* max_hw_sectors; void* max_discard_segments; void* max_segments; } ;


 void* UINT_MAX ;
 void* USHRT_MAX ;
 int blk_set_default_limits (struct queue_limits*) ;

void blk_set_stacking_limits(struct queue_limits *lim)
{
 blk_set_default_limits(lim);


 lim->max_segments = USHRT_MAX;
 lim->max_discard_segments = USHRT_MAX;
 lim->max_hw_sectors = UINT_MAX;
 lim->max_segment_size = UINT_MAX;
 lim->max_sectors = UINT_MAX;
 lim->max_dev_sectors = UINT_MAX;
 lim->max_write_same_sectors = UINT_MAX;
 lim->max_write_zeroes_sectors = UINT_MAX;
}
