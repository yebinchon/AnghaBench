
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
typedef int tcache_t ;
struct TYPE_3__ {int * ptr; } ;
struct TYPE_4__ {TYPE_1__ cur_ptr; } ;


 int assert (int) ;
 scalar_t__ config_debug ;
 int tcache_available (int *) ;
 int tcache_destroy (int *,int *,int) ;
 TYPE_2__* tcache_small_bin_get (int *,int ) ;
 int tsd_tcache_enabled_get (int *) ;
 int * tsd_tcachep_get (int *) ;

void
tcache_cleanup(tsd_t *tsd) {
 tcache_t *tcache = tsd_tcachep_get(tsd);
 if (!tcache_available(tsd)) {
  assert(tsd_tcache_enabled_get(tsd) == 0);
  if (config_debug) {
   assert(tcache_small_bin_get(tcache, 0)->cur_ptr.ptr
       == ((void*)0));
  }
  return;
 }
 assert(tsd_tcache_enabled_get(tsd));
 assert(tcache_small_bin_get(tcache, 0)->cur_ptr.ptr != ((void*)0));

 tcache_destroy(tsd, tcache, 1);
 if (config_debug) {
  tcache_small_bin_get(tcache, 0)->cur_ptr.ptr = ((void*)0);
 }
}
