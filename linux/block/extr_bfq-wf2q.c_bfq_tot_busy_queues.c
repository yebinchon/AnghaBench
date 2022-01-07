
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_data {unsigned int* busy_queues; } ;



unsigned int bfq_tot_busy_queues(struct bfq_data *bfqd)
{
 return bfqd->busy_queues[0] + bfqd->busy_queues[1] +
  bfqd->busy_queues[2];
}
