
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_3__ {int * tcache; } ;
typedef TYPE_1__ tcaches_t ;
typedef int tcache_t ;


 int * TCACHES_ELM_NEED_REINIT ;
 int malloc_mutex_assert_owner (int ,int *) ;
 int tcaches_mtx ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static tcache_t *
tcaches_elm_remove(tsd_t *tsd, tcaches_t *elm, bool allow_reinit) {
 malloc_mutex_assert_owner(tsd_tsdn(tsd), &tcaches_mtx);

 if (elm->tcache == ((void*)0)) {
  return ((void*)0);
 }
 tcache_t *tcache = elm->tcache;
 if (allow_reinit) {
  elm->tcache = TCACHES_ELM_NEED_REINIT;
 } else {
  elm->tcache = ((void*)0);
 }

 if (tcache == TCACHES_ELM_NEED_REINIT) {
  return ((void*)0);
 }
 return tcache;
}
