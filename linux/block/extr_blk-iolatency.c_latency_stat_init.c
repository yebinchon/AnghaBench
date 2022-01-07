
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ missed; scalar_t__ total; } ;
struct latency_stat {int rqs; TYPE_1__ ps; } ;
struct iolatency_grp {scalar_t__ ssd; } ;


 int blk_rq_stat_init (int *) ;

__attribute__((used)) static inline void latency_stat_init(struct iolatency_grp *iolat,
         struct latency_stat *stat)
{
 if (iolat->ssd) {
  stat->ps.total = 0;
  stat->ps.missed = 0;
 } else
  blk_rq_stat_init(&stat->rqs);
}
