
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {int max_write_same_sectors; int max_write_zeroes_sectors; int misaligned; unsigned int alignment_offset; unsigned int physical_block_size; unsigned int io_min; int logical_block_size; int io_opt; int raid_partial_stripes_expensive; int discard_granularity; unsigned int discard_alignment; int discard_misaligned; void* chunk_sectors; void* max_hw_discard_sectors; void* max_discard_sectors; void* max_segment_size; void* max_integrity_segments; void* max_discard_segments; void* max_segments; void* virt_boundary_mask; void* seg_boundary_mask; void* bounce_pfn; void* max_dev_sectors; void* max_hw_sectors; void* max_sectors; } ;
typedef int sector_t ;


 int lcm_not_zero (int,unsigned int) ;
 int max (unsigned int,unsigned int) ;
 int min (unsigned int,unsigned int) ;
 void* min_not_zero (void*,void*) ;
 unsigned int queue_limit_alignment_offset (struct queue_limits*,int ) ;
 unsigned int queue_limit_discard_alignment (struct queue_limits*,int ) ;

int blk_stack_limits(struct queue_limits *t, struct queue_limits *b,
       sector_t start)
{
 unsigned int top, bottom, alignment, ret = 0;

 t->max_sectors = min_not_zero(t->max_sectors, b->max_sectors);
 t->max_hw_sectors = min_not_zero(t->max_hw_sectors, b->max_hw_sectors);
 t->max_dev_sectors = min_not_zero(t->max_dev_sectors, b->max_dev_sectors);
 t->max_write_same_sectors = min(t->max_write_same_sectors,
     b->max_write_same_sectors);
 t->max_write_zeroes_sectors = min(t->max_write_zeroes_sectors,
     b->max_write_zeroes_sectors);
 t->bounce_pfn = min_not_zero(t->bounce_pfn, b->bounce_pfn);

 t->seg_boundary_mask = min_not_zero(t->seg_boundary_mask,
         b->seg_boundary_mask);
 t->virt_boundary_mask = min_not_zero(t->virt_boundary_mask,
         b->virt_boundary_mask);

 t->max_segments = min_not_zero(t->max_segments, b->max_segments);
 t->max_discard_segments = min_not_zero(t->max_discard_segments,
            b->max_discard_segments);
 t->max_integrity_segments = min_not_zero(t->max_integrity_segments,
       b->max_integrity_segments);

 t->max_segment_size = min_not_zero(t->max_segment_size,
        b->max_segment_size);

 t->misaligned |= b->misaligned;

 alignment = queue_limit_alignment_offset(b, start);




 if (t->alignment_offset != alignment) {

  top = max(t->physical_block_size, t->io_min)
   + t->alignment_offset;
  bottom = max(b->physical_block_size, b->io_min) + alignment;


  if (max(top, bottom) % min(top, bottom)) {
   t->misaligned = 1;
   ret = -1;
  }
 }

 t->logical_block_size = max(t->logical_block_size,
        b->logical_block_size);

 t->physical_block_size = max(t->physical_block_size,
         b->physical_block_size);

 t->io_min = max(t->io_min, b->io_min);
 t->io_opt = lcm_not_zero(t->io_opt, b->io_opt);


 if (t->physical_block_size & (t->logical_block_size - 1)) {
  t->physical_block_size = t->logical_block_size;
  t->misaligned = 1;
  ret = -1;
 }


 if (t->io_min & (t->physical_block_size - 1)) {
  t->io_min = t->physical_block_size;
  t->misaligned = 1;
  ret = -1;
 }


 if (t->io_opt & (t->physical_block_size - 1)) {
  t->io_opt = 0;
  t->misaligned = 1;
  ret = -1;
 }

 t->raid_partial_stripes_expensive =
  max(t->raid_partial_stripes_expensive,
      b->raid_partial_stripes_expensive);


 t->alignment_offset = lcm_not_zero(t->alignment_offset, alignment)
  % max(t->physical_block_size, t->io_min);


 if (t->alignment_offset & (t->logical_block_size - 1)) {
  t->misaligned = 1;
  ret = -1;
 }


 if (b->discard_granularity) {
  alignment = queue_limit_discard_alignment(b, start);

  if (t->discard_granularity != 0 &&
      t->discard_alignment != alignment) {
   top = t->discard_granularity + t->discard_alignment;
   bottom = b->discard_granularity + alignment;


   if ((max(top, bottom) % min(top, bottom)) != 0)
    t->discard_misaligned = 1;
  }

  t->max_discard_sectors = min_not_zero(t->max_discard_sectors,
            b->max_discard_sectors);
  t->max_hw_discard_sectors = min_not_zero(t->max_hw_discard_sectors,
        b->max_hw_discard_sectors);
  t->discard_granularity = max(t->discard_granularity,
          b->discard_granularity);
  t->discard_alignment = lcm_not_zero(t->discard_alignment, alignment) %
   t->discard_granularity;
 }

 if (b->chunk_sectors)
  t->chunk_sectors = min_not_zero(t->chunk_sectors,
      b->chunk_sectors);

 return ret;
}
