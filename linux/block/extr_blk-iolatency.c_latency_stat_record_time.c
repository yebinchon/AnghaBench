
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int total; int missed; } ;
struct latency_stat {int rqs; TYPE_1__ ps; } ;
struct iolatency_grp {int min_lat_nsec; scalar_t__ ssd; int stats; } ;


 int blk_rq_stat_add (int *,int ) ;
 struct latency_stat* get_cpu_ptr (int ) ;
 int put_cpu_ptr (struct latency_stat*) ;

__attribute__((used)) static inline void latency_stat_record_time(struct iolatency_grp *iolat,
         u64 req_time)
{
 struct latency_stat *stat = get_cpu_ptr(iolat->stats);
 if (iolat->ssd) {
  if (req_time >= iolat->min_lat_nsec)
   stat->ps.missed++;
  stat->ps.total++;
 } else
  blk_rq_stat_add(&stat->rqs, req_time);
 put_cpu_ptr(stat);
}
