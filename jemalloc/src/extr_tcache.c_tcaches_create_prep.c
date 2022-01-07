
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;


 int CACHELINE ;
 int MALLOCX_TCACHE_MAX ;
 int b0get () ;
 int * base_alloc (int ,int ,int,int ) ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int * tcaches ;
 int * tcaches_avail ;
 int tcaches_mtx ;
 int tcaches_past ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static bool
tcaches_create_prep(tsd_t *tsd) {
 bool err;

 malloc_mutex_lock(tsd_tsdn(tsd), &tcaches_mtx);

 if (tcaches == ((void*)0)) {
  tcaches = base_alloc(tsd_tsdn(tsd), b0get(), sizeof(tcache_t *)
      * (MALLOCX_TCACHE_MAX+1), CACHELINE);
  if (tcaches == ((void*)0)) {
   err = 1;
   goto label_return;
  }
 }

 if (tcaches_avail == ((void*)0) && tcaches_past > MALLOCX_TCACHE_MAX) {
  err = 1;
  goto label_return;
 }

 err = 0;
label_return:
 malloc_mutex_unlock(tsd_tsdn(tsd), &tcaches_mtx);
 return err;
}
