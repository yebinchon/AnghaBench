
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_rq_stat {unsigned long long min; scalar_t__ batch; scalar_t__ mean; scalar_t__ nr_samples; scalar_t__ max; } ;



void blk_rq_stat_init(struct blk_rq_stat *stat)
{
 stat->min = -1ULL;
 stat->max = stat->nr_samples = stat->mean = 0;
 stat->batch = 0;
}
