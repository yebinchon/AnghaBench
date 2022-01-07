
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsd_t ;
typedef int prof_tdata_t ;
struct TYPE_7__ {int prepared; TYPE_1__* tdata; } ;
typedef TYPE_2__ prof_tctx_t ;
struct TYPE_6__ {int lock; } ;


 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 int prof_sample_threshold_update (int *) ;
 int prof_tctx_destroy (int *,TYPE_2__*) ;
 scalar_t__ prof_tctx_should_destroy (int ,TYPE_2__*) ;
 int * prof_tdata_get (int *,int) ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;

void
prof_alloc_rollback(tsd_t *tsd, prof_tctx_t *tctx, bool updated) {
 cassert(config_prof);

 if (tsd_reentrancy_level_get(tsd) > 0) {
  assert((uintptr_t)tctx == (uintptr_t)1U);
  return;
 }

 prof_tdata_t *tdata;

 if (updated) {






  tdata = prof_tdata_get(tsd, 1);
  if (tdata != ((void*)0)) {
   prof_sample_threshold_update(tsd);
  }
 }

 if ((uintptr_t)tctx > (uintptr_t)1U) {
  malloc_mutex_lock(tsd_tsdn(tsd), tctx->tdata->lock);
  tctx->prepared = 0;
  if (prof_tctx_should_destroy(tsd_tsdn(tsd), tctx)) {
   prof_tctx_destroy(tsd, tctx);
  } else {
   malloc_mutex_unlock(tsd_tsdn(tsd), tctx->tdata->lock);
  }
 }
}
