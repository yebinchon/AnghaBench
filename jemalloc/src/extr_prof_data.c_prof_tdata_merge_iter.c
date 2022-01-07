
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int accumbytes; int accumobjs; int curbytes; int curobjs; } ;
struct prof_tdata_merge_iter_arg_s {int tsdn; TYPE_1__ cnt_all; } ;
typedef int prof_tdata_tree_t ;
struct TYPE_9__ {scalar_t__ accumbytes; scalar_t__ accumobjs; scalar_t__ curbytes; scalar_t__ curobjs; } ;
struct TYPE_8__ {int dumping; int lock; TYPE_6__ cnt_summed; int bt2tctx; int expired; } ;
typedef TYPE_2__ prof_tdata_t ;
typedef int prof_tctx_t ;
typedef int prof_cnt_t ;


 int ckh_iter (int *,size_t*,int *,void**) ;
 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ opt_prof_accum ;
 int prof_tctx_merge_tdata (int ,int *,TYPE_2__*) ;

__attribute__((used)) static prof_tdata_t *
prof_tdata_merge_iter(prof_tdata_tree_t *tdatas, prof_tdata_t *tdata,
    void *opaque) {
 struct prof_tdata_merge_iter_arg_s *arg =
     (struct prof_tdata_merge_iter_arg_s *)opaque;

 malloc_mutex_lock(arg->tsdn, tdata->lock);
 if (!tdata->expired) {
  size_t tabind;
  union {
   prof_tctx_t *p;
   void *v;
  } tctx;

  tdata->dumping = 1;
  memset(&tdata->cnt_summed, 0, sizeof(prof_cnt_t));
  for (tabind = 0; !ckh_iter(&tdata->bt2tctx, &tabind, ((void*)0),
      &tctx.v);) {
   prof_tctx_merge_tdata(arg->tsdn, tctx.p, tdata);
  }

  arg->cnt_all.curobjs += tdata->cnt_summed.curobjs;
  arg->cnt_all.curbytes += tdata->cnt_summed.curbytes;
  if (opt_prof_accum) {
   arg->cnt_all.accumobjs += tdata->cnt_summed.accumobjs;
   arg->cnt_all.accumbytes += tdata->cnt_summed.accumbytes;
  }
 } else {
  tdata->dumping = 0;
 }
 malloc_mutex_unlock(arg->tsdn, tdata->lock);

 return ((void*)0);
}
