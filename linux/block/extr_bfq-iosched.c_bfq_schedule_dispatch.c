
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_data {scalar_t__ queued; int queue; } ;


 int bfq_log (struct bfq_data*,char*) ;
 int blk_mq_run_hw_queues (int ,int) ;

void bfq_schedule_dispatch(struct bfq_data *bfqd)
{
 if (bfqd->queued != 0) {
  bfq_log(bfqd, "schedule dispatch");
  blk_mq_run_hw_queues(bfqd->queue, 1);
 }
}
