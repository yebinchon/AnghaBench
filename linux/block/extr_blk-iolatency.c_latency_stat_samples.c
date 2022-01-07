
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int nr_samples; } ;
struct TYPE_3__ {int total; } ;
struct latency_stat {TYPE_2__ rqs; TYPE_1__ ps; } ;
struct iolatency_grp {scalar_t__ ssd; } ;



__attribute__((used)) static inline u64 latency_stat_samples(struct iolatency_grp *iolat,
           struct latency_stat *stat)
{
 if (iolat->ssd)
  return stat->ps.total;
 return stat->rqs.nr_samples;
}
