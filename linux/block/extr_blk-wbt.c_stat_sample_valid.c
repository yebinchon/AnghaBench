
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_rq_stat {int nr_samples; } ;


 size_t READ ;
 int RWB_MIN_WRITE_SAMPLES ;
 size_t WRITE ;

__attribute__((used)) static inline bool stat_sample_valid(struct blk_rq_stat *stat)
{






 return (stat[READ].nr_samples >= 1 &&
  stat[WRITE].nr_samples >= RWB_MIN_WRITE_SAMPLES);
}
