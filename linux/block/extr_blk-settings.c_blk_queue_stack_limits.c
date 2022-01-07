
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int limits; } ;


 int blk_stack_limits (int *,int *,int ) ;

void blk_queue_stack_limits(struct request_queue *t, struct request_queue *b)
{
 blk_stack_limits(&t->limits, &b->limits, 0);
}
