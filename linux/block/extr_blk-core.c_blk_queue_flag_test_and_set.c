
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;


 int test_and_set_bit (unsigned int,int *) ;

bool blk_queue_flag_test_and_set(unsigned int flag, struct request_queue *q)
{
 return test_and_set_bit(flag, &q->queue_flags);
}
