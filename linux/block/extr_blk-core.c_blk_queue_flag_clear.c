
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;


 int clear_bit (unsigned int,int *) ;

void blk_queue_flag_clear(unsigned int flag, struct request_queue *q)
{
 clear_bit(flag, &q->queue_flags);
}
