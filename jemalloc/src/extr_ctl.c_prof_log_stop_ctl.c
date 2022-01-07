
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int EFAULT ;
 int ENOENT ;
 int config_prof ;
 scalar_t__ prof_log_stop (int ) ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static int
prof_log_stop_ctl(tsd_t *tsd, const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen) {
 if (!config_prof) {
  return ENOENT;
 }

 if (prof_log_stop(tsd_tsdn(tsd))) {
  return EFAULT;
 }

 return 0;
}
