
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {scalar_t__ mean; } ;
struct TYPE_3__ {scalar_t__ missed; int total; } ;
struct latency_stat {TYPE_2__ rqs; TYPE_1__ ps; } ;
struct iolatency_grp {scalar_t__ min_lat_nsec; scalar_t__ ssd; } ;


 scalar_t__ div64_u64 (int ,int) ;
 scalar_t__ max (scalar_t__,unsigned long long) ;

__attribute__((used)) static inline bool latency_sum_ok(struct iolatency_grp *iolat,
      struct latency_stat *stat)
{
 if (iolat->ssd) {
  u64 thresh = div64_u64(stat->ps.total, 10);
  thresh = max(thresh, 1ULL);
  return stat->ps.missed < thresh;
 }
 return stat->rqs.mean <= iolat->min_lat_nsec;
}
