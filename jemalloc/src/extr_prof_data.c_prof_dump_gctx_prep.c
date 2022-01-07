
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int prof_gctx_tree_t ;
struct TYPE_4__ {int lock; int cnt_summed; int nlimbo; } ;
typedef TYPE_1__ prof_gctx_t ;
typedef int prof_cnt_t ;


 int cassert (int ) ;
 int config_prof ;
 int gctx_tree_insert (int *,TYPE_1__*) ;
 int malloc_mutex_lock (int *,int ) ;
 int malloc_mutex_unlock (int *,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
prof_dump_gctx_prep(tsdn_t *tsdn, prof_gctx_t *gctx, prof_gctx_tree_t *gctxs) {
 cassert(config_prof);

 malloc_mutex_lock(tsdn, gctx->lock);






 gctx->nlimbo++;
 gctx_tree_insert(gctxs, gctx);

 memset(&gctx->cnt_summed, 0, sizeof(prof_cnt_t));

 malloc_mutex_unlock(tsdn, gctx->lock);
}
