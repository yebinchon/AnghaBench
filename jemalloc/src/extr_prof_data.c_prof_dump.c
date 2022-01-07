
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
struct prof_tdata_merge_iter_arg_s {int cnt_all; } ;
struct prof_gctx_merge_iter_arg_s {int leak_ngctx; } ;
struct prof_gctx_dump_iter_arg_s {int dummy; } ;
typedef int prof_tdata_t ;
typedef int prof_gctx_tree_t ;


 int assert (int) ;
 int cassert (int ) ;
 int config_prof ;
 int malloc_mutex_lock (int ,int *) ;
 int malloc_mutex_unlock (int ,int *) ;
 int post_reentrancy (int *) ;
 int pre_reentrancy (int *,int *) ;
 int prof_dump_file (int *,int,char const*,int,int *,struct prof_tdata_merge_iter_arg_s*,struct prof_gctx_merge_iter_arg_s*,struct prof_gctx_dump_iter_arg_s*,int *) ;
 int prof_dump_mtx ;
 int prof_dump_prep (int *,int *,struct prof_tdata_merge_iter_arg_s*,struct prof_gctx_merge_iter_arg_s*,int *) ;
 int prof_gctx_finish (int *,int *) ;
 int prof_leakcheck (int *,int ,char const*) ;
 int * prof_tdata_get (int *,int) ;
 scalar_t__ tsd_reentrancy_level_get (int *) ;
 int tsd_tsdn (int *) ;

bool
prof_dump(tsd_t *tsd, bool propagate_err, const char *filename,
    bool leakcheck) {
 cassert(config_prof);
 assert(tsd_reentrancy_level_get(tsd) == 0);

 prof_tdata_t * tdata = prof_tdata_get(tsd, 1);
 if (tdata == ((void*)0)) {
  return 1;
 }

 pre_reentrancy(tsd, ((void*)0));
 malloc_mutex_lock(tsd_tsdn(tsd), &prof_dump_mtx);

 prof_gctx_tree_t gctxs;
 struct prof_tdata_merge_iter_arg_s prof_tdata_merge_iter_arg;
 struct prof_gctx_merge_iter_arg_s prof_gctx_merge_iter_arg;
 struct prof_gctx_dump_iter_arg_s prof_gctx_dump_iter_arg;
 prof_dump_prep(tsd, tdata, &prof_tdata_merge_iter_arg,
     &prof_gctx_merge_iter_arg, &gctxs);
 bool err = prof_dump_file(tsd, propagate_err, filename, leakcheck, tdata,
     &prof_tdata_merge_iter_arg, &prof_gctx_merge_iter_arg,
     &prof_gctx_dump_iter_arg, &gctxs);
 prof_gctx_finish(tsd, &gctxs);

 malloc_mutex_unlock(tsd_tsdn(tsd), &prof_dump_mtx);
 post_reentrancy(tsd);

 if (err) {
  return 1;
 }

 if (leakcheck) {
  prof_leakcheck(&prof_tdata_merge_iter_arg.cnt_all,
      prof_gctx_merge_iter_arg.leak_ngctx, filename);
 }
 return 0;
}
