
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct blk_rq_stat {int nr_samples; int batch; int max; int min; } ;


 int max (int ,scalar_t__) ;
 int min (int ,scalar_t__) ;

void blk_rq_stat_add(struct blk_rq_stat *stat, u64 value)
{
 stat->min = min(stat->min, value);
 stat->max = max(stat->max, value);
 stat->batch += value;
 stat->nr_samples++;
}
