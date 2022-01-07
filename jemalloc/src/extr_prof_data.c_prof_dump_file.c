
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
struct prof_tdata_merge_iter_arg_s {int cnt_all; } ;
struct prof_gctx_merge_iter_arg_s {int dummy; } ;
struct prof_gctx_dump_iter_arg_s {int propagate_err; int tsdn; } ;
typedef int prof_tdata_t ;
typedef int prof_gctx_tree_t ;


 int * gctx_tree_iter (int *,int *,int ,void*) ;
 scalar_t__ prof_dump_close (int) ;
 int prof_dump_fd ;
 scalar_t__ prof_dump_header (int ,int,int *) ;
 scalar_t__ prof_dump_maps (int) ;
 int prof_dump_open (int,char const*) ;
 int prof_gctx_dump_iter ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static bool
prof_dump_file(tsd_t *tsd, bool propagate_err, const char *filename,
    bool leakcheck, prof_tdata_t *tdata,
    struct prof_tdata_merge_iter_arg_s *prof_tdata_merge_iter_arg,
    struct prof_gctx_merge_iter_arg_s *prof_gctx_merge_iter_arg,
    struct prof_gctx_dump_iter_arg_s *prof_gctx_dump_iter_arg,
    prof_gctx_tree_t *gctxs) {

 if ((prof_dump_fd = prof_dump_open(propagate_err, filename)) == -1) {
  return 1;
 }


 if (prof_dump_header(tsd_tsdn(tsd), propagate_err,
     &prof_tdata_merge_iter_arg->cnt_all)) {
  goto label_write_error;
 }


 prof_gctx_dump_iter_arg->tsdn = tsd_tsdn(tsd);
 prof_gctx_dump_iter_arg->propagate_err = propagate_err;
 if (gctx_tree_iter(gctxs, ((void*)0), prof_gctx_dump_iter,
     (void *)prof_gctx_dump_iter_arg) != ((void*)0)) {
  goto label_write_error;
 }


 if (prof_dump_maps(propagate_err)) {
  goto label_write_error;
 }

 if (prof_dump_close(propagate_err)) {
  return 1;
 }

 return 0;
label_write_error:
 prof_dump_close(propagate_err);
 return 1;
}
