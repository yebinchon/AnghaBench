
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_freeze_queue (struct request_queue*) ;

void blk_mq_freeze_queue(struct request_queue *q)
{




 blk_freeze_queue(q);
}
