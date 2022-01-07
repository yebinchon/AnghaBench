
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {int * tcache; struct TYPE_4__* next; } ;
typedef TYPE_1__ tcaches_t ;
typedef int tcache_t ;


 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int * tcache_create_explicit (int *) ;
 TYPE_1__* tcaches ;
 TYPE_1__* tcaches_avail ;
 scalar_t__ tcaches_create_prep (int *) ;
 int tcaches_mtx ;
 size_t tcaches_past ;
 int tsd_tsdn (int *) ;
 int tsdn_witness_tsdp_get (int ) ;
 int witness_assert_depth (int ,int ) ;

bool
tcaches_create(tsd_t *tsd, unsigned *r_ind) {
 witness_assert_depth(tsdn_witness_tsdp_get(tsd_tsdn(tsd)), 0);

 bool err;

 if (tcaches_create_prep(tsd)) {
  err = 1;
  goto label_return;
 }

 tcache_t *tcache = tcache_create_explicit(tsd);
 if (tcache == ((void*)0)) {
  err = 1;
  goto label_return;
 }

 tcaches_t *elm;
 malloc_mutex_lock(tsd_tsdn(tsd), &tcaches_mtx);
 if (tcaches_avail != ((void*)0)) {
  elm = tcaches_avail;
  tcaches_avail = tcaches_avail->next;
  elm->tcache = tcache;
  *r_ind = (unsigned)(elm - tcaches);
 } else {
  elm = &tcaches[tcaches_past];
  elm->tcache = tcache;
  *r_ind = tcaches_past;
  tcaches_past++;
 }
 malloc_mutex_unlock(tsd_tsdn(tsd), &tcaches_mtx);

 err = 0;
label_return:
 witness_assert_depth(tsdn_witness_tsdp_get(tsd_tsdn(tsd)), 0);
 return err;
}
