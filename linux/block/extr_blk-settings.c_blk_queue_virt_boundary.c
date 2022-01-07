
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long virt_boundary_mask; int max_segment_size; } ;
struct request_queue {TYPE_1__ limits; } ;


 int UINT_MAX ;

void blk_queue_virt_boundary(struct request_queue *q, unsigned long mask)
{
 q->limits.virt_boundary_mask = mask;







 if (mask)
  q->limits.max_segment_size = UINT_MAX;
}
