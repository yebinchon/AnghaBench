
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_2__ {int size; int nregs; int nfree; } ;
typedef TYPE_1__ extent_util_stats_t ;


 int EINVAL ;
 int assert (int) ;
 int extent_util_stats_get (int ,void*,int *,int *,int *) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static int
experimental_utilization_batch_query_ctl(tsd_t *tsd, const size_t *mib,
    size_t miblen, void *oldp, size_t *oldlenp, void *newp, size_t newlen) {
 int ret;

 assert(sizeof(extent_util_stats_t) == sizeof(size_t) * 3);

 const size_t len = newlen / sizeof(const void *);
 if (oldp == ((void*)0) || oldlenp == ((void*)0) || newp == ((void*)0) || newlen == 0
     || newlen != len * sizeof(const void *)
     || *oldlenp != len * sizeof(extent_util_stats_t)) {
  ret = EINVAL;
  goto label_return;
 }

 void **ptrs = (void **)newp;
 extent_util_stats_t *util_stats = (extent_util_stats_t *)oldp;
 size_t i;
 for (i = 0; i < len; ++i) {
  extent_util_stats_get(tsd_tsdn(tsd), ptrs[i],
      &util_stats[i].nfree, &util_stats[i].nregs,
      &util_stats[i].size);
 }
 ret = 0;

label_return:
 return ret;
}
