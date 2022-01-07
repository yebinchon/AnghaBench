
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {int max_discard_segments; int logical_block_size; int physical_block_size; int io_min; unsigned long bounce_pfn; int zoned; scalar_t__ misaligned; scalar_t__ io_opt; scalar_t__ alignment_offset; scalar_t__ discard_misaligned; scalar_t__ discard_alignment; scalar_t__ discard_granularity; scalar_t__ max_hw_discard_sectors; scalar_t__ max_discard_sectors; scalar_t__ max_write_zeroes_sectors; scalar_t__ max_write_same_sectors; scalar_t__ chunk_sectors; scalar_t__ max_dev_sectors; int max_hw_sectors; int max_sectors; int max_segment_size; scalar_t__ virt_boundary_mask; int seg_boundary_mask; scalar_t__ max_integrity_segments; int max_segments; } ;


 int BLK_BOUNCE_ANY ;
 int BLK_MAX_SEGMENTS ;
 int BLK_MAX_SEGMENT_SIZE ;
 int BLK_SAFE_MAX_SECTORS ;
 int BLK_SEG_BOUNDARY_MASK ;
 int BLK_ZONED_NONE ;
 int PAGE_SHIFT ;

void blk_set_default_limits(struct queue_limits *lim)
{
 lim->max_segments = BLK_MAX_SEGMENTS;
 lim->max_discard_segments = 1;
 lim->max_integrity_segments = 0;
 lim->seg_boundary_mask = BLK_SEG_BOUNDARY_MASK;
 lim->virt_boundary_mask = 0;
 lim->max_segment_size = BLK_MAX_SEGMENT_SIZE;
 lim->max_sectors = lim->max_hw_sectors = BLK_SAFE_MAX_SECTORS;
 lim->max_dev_sectors = 0;
 lim->chunk_sectors = 0;
 lim->max_write_same_sectors = 0;
 lim->max_write_zeroes_sectors = 0;
 lim->max_discard_sectors = 0;
 lim->max_hw_discard_sectors = 0;
 lim->discard_granularity = 0;
 lim->discard_alignment = 0;
 lim->discard_misaligned = 0;
 lim->logical_block_size = lim->physical_block_size = lim->io_min = 512;
 lim->bounce_pfn = (unsigned long)(BLK_BOUNCE_ANY >> PAGE_SHIFT);
 lim->alignment_offset = 0;
 lim->io_opt = 0;
 lim->misaligned = 0;
 lim->zoned = BLK_ZONED_NONE;
}
