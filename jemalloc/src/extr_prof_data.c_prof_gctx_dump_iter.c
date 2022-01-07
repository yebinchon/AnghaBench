
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct prof_gctx_dump_iter_arg_s {int tsdn; int propagate_err; } ;
typedef int prof_gctx_tree_t ;
struct TYPE_5__ {int lock; int bt; } ;
typedef TYPE_1__ prof_gctx_t ;


 int malloc_mutex_lock (int ,int ) ;
 int malloc_mutex_unlock (int ,int ) ;
 scalar_t__ prof_dump_gctx (int ,int ,TYPE_1__*,int *,int *) ;

__attribute__((used)) static prof_gctx_t *
prof_gctx_dump_iter(prof_gctx_tree_t *gctxs, prof_gctx_t *gctx, void *opaque) {
 prof_gctx_t *ret;
 struct prof_gctx_dump_iter_arg_s *arg =
     (struct prof_gctx_dump_iter_arg_s *)opaque;

 malloc_mutex_lock(arg->tsdn, gctx->lock);

 if (prof_dump_gctx(arg->tsdn, arg->propagate_err, gctx, &gctx->bt,
     gctxs)) {
  ret = gctx;
  goto label_return;
 }

 ret = ((void*)0);
label_return:
 malloc_mutex_unlock(arg->tsdn, gctx->lock);
 return ret;
}
