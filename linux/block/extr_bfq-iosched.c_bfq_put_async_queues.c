
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_group {int async_idle_bfqq; int ** async_bfqq; } ;
struct bfq_data {int dummy; } ;


 int IOPRIO_BE_NR ;
 int __bfq_put_async_bfqq (struct bfq_data*,int *) ;

void bfq_put_async_queues(struct bfq_data *bfqd, struct bfq_group *bfqg)
{
 int i, j;

 for (i = 0; i < 2; i++)
  for (j = 0; j < IOPRIO_BE_NR; j++)
   __bfq_put_async_bfqq(bfqd, &bfqg->async_bfqq[i][j]);

 __bfq_put_async_bfqq(bfqd, &bfqg->async_idle_bfqq);
}
