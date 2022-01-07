
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_depth; } ;
struct iolatency_grp {TYPE_1__ rq_depth; int cur_win_nsec; int lat_avg; scalar_t__ ssd; } ;
struct blkg_policy_data {int dummy; } ;


 int NSEC_PER_MSEC ;
 int NSEC_PER_USEC ;
 int UINT_MAX ;
 int blkcg_debug_stats ;
 unsigned long long div64_u64 (int ,int ) ;
 size_t iolatency_ssd_stat (struct iolatency_grp*,char*,size_t) ;
 struct iolatency_grp* pd_to_lat (struct blkg_policy_data*) ;
 size_t scnprintf (char*,size_t,char*,unsigned long long,unsigned long long,...) ;

__attribute__((used)) static size_t iolatency_pd_stat(struct blkg_policy_data *pd, char *buf,
    size_t size)
{
 struct iolatency_grp *iolat = pd_to_lat(pd);
 unsigned long long avg_lat;
 unsigned long long cur_win;

 if (!blkcg_debug_stats)
  return 0;

 if (iolat->ssd)
  return iolatency_ssd_stat(iolat, buf, size);

 avg_lat = div64_u64(iolat->lat_avg, NSEC_PER_USEC);
 cur_win = div64_u64(iolat->cur_win_nsec, NSEC_PER_MSEC);
 if (iolat->rq_depth.max_depth == UINT_MAX)
  return scnprintf(buf, size, " depth=max avg_lat=%llu win=%llu",
     avg_lat, cur_win);

 return scnprintf(buf, size, " depth=%u avg_lat=%llu win=%llu",
    iolat->rq_depth.max_depth, avg_lat, cur_win);
}
