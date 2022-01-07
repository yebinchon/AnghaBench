
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_11__ {int accumbytes; int accumobjs; int curbytes; int curobjs; } ;
struct TYPE_12__ {TYPE_3__ cnt_summed; } ;
typedef TYPE_4__ prof_tdata_t ;
struct TYPE_14__ {int accumbytes; int accumobjs; int curbytes; int curobjs; } ;
struct TYPE_13__ {int state; TYPE_8__ dump_cnts; int cnts; TYPE_2__* gctx; TYPE_1__* tdata; } ;
typedef TYPE_5__ prof_tctx_t ;
typedef int prof_cnt_t ;
struct TYPE_10__ {int lock; } ;
struct TYPE_9__ {int lock; } ;


 int malloc_mutex_assert_owner (int *,int ) ;
 int malloc_mutex_lock (int *,int ) ;
 int malloc_mutex_unlock (int *,int ) ;
 int memcpy (TYPE_8__*,int *,int) ;
 int not_reached () ;
 int opt_prof_accum ;





__attribute__((used)) static void
prof_tctx_merge_tdata(tsdn_t *tsdn, prof_tctx_t *tctx, prof_tdata_t *tdata) {
 malloc_mutex_assert_owner(tsdn, tctx->tdata->lock);

 malloc_mutex_lock(tsdn, tctx->gctx->lock);

 switch (tctx->state) {
 case 130:
  malloc_mutex_unlock(tsdn, tctx->gctx->lock);
  return;
 case 129:
  tctx->state = 131;
  malloc_mutex_unlock(tsdn, tctx->gctx->lock);

  memcpy(&tctx->dump_cnts, &tctx->cnts, sizeof(prof_cnt_t));

  tdata->cnt_summed.curobjs += tctx->dump_cnts.curobjs;
  tdata->cnt_summed.curbytes += tctx->dump_cnts.curbytes;
  if (opt_prof_accum) {
   tdata->cnt_summed.accumobjs +=
       tctx->dump_cnts.accumobjs;
   tdata->cnt_summed.accumbytes +=
       tctx->dump_cnts.accumbytes;
  }
  break;
 case 131:
 case 128:
  not_reached();
 }
}
