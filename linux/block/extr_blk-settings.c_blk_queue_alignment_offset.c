
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int alignment_offset; int physical_block_size; scalar_t__ misaligned; } ;
struct request_queue {TYPE_1__ limits; } ;



void blk_queue_alignment_offset(struct request_queue *q, unsigned int offset)
{
 q->limits.alignment_offset =
  offset & (q->limits.physical_block_size - 1);
 q->limits.misaligned = 0;
}
