
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_data {int root_group; } ;


 int bfq_end_wr_async_queues (struct bfq_data*,int ) ;

void bfq_end_wr_async(struct bfq_data *bfqd)
{
 bfq_end_wr_async_queues(bfqd, bfqd->root_group);
}
