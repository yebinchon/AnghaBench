
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned short max_discard_segments; } ;
struct request_queue {TYPE_1__ limits; } ;



void blk_queue_max_discard_segments(struct request_queue *q,
  unsigned short max_segments)
{
 q->limits.max_discard_segments = max_segments;
}
