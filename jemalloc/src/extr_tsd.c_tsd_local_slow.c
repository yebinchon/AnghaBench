
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tcache_enabled_get (int *) ;

__attribute__((used)) static bool
tsd_local_slow(tsd_t *tsd) {
 return !tsd_tcache_enabled_get(tsd)
     || tsd_reentrancy_level_get(tsd) > 0;
}
