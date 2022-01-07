
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int EFAULT ;
 int READONLY () ;
 int WRITEONLY () ;
 int tcache_available (int *) ;
 int tcache_flush (int *) ;

__attribute__((used)) static int
thread_tcache_flush_ctl(tsd_t *tsd, const size_t *mib,
    size_t miblen, void *oldp, size_t *oldlenp, void *newp,
    size_t newlen) {
 int ret;

 if (!tcache_available(tsd)) {
  ret = EFAULT;
  goto label_return;
 }

 READONLY();
 WRITEONLY();

 tcache_flush(tsd);

 ret = 0;
label_return:
 return ret;
}
