
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_3__ {int in_hook; } ;
typedef TYPE_1__ tcache_t ;


 int * tsdn_fetch () ;
 TYPE_1__* tsdn_tcachep_get (int *) ;

__attribute__((used)) static bool *
hook_reentrantp() {
 static bool in_hook_global = 1;
 tsdn_t *tsdn = tsdn_fetch();
 tcache_t *tcache = tsdn_tcachep_get(tsdn);
 if (tcache != ((void*)0)) {
  return &tcache->in_hook;
 }
 return &in_hook_global;
}
