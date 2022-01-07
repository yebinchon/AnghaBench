
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_rq_stat {int nr_samples; int mean; scalar_t__ batch; int max; int min; } ;


 int div_u64 (scalar_t__,int) ;
 int max (int ,int ) ;
 int min (int ,int ) ;

void blk_rq_stat_sum(struct blk_rq_stat *dst, struct blk_rq_stat *src)
{
 if (!src->nr_samples)
  return;

 dst->min = min(dst->min, src->min);
 dst->max = max(dst->max, src->max);

 dst->mean = div_u64(src->batch + dst->mean * dst->nr_samples,
    dst->nr_samples + src->nr_samples);

 dst->nr_samples += src->nr_samples;
}
