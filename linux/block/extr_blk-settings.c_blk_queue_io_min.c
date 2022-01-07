
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int limits; } ;


 int blk_limits_io_min (int *,unsigned int) ;

void blk_queue_io_min(struct request_queue *q, unsigned int min)
{
 blk_limits_io_min(&q->limits, min);
}
