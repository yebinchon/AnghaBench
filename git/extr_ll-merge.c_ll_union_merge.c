
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_merge_options {int variant; } ;
struct ll_merge_driver {int dummy; } ;
typedef int mmfile_t ;
typedef int mmbuffer_t ;


 int XDL_MERGE_FAVOR_UNION ;
 int assert (struct ll_merge_options const*) ;
 int ll_xdl_merge (struct ll_merge_driver const*,int *,char const*,int *,int *,int *,int *,int *,int *,struct ll_merge_options*,int) ;

__attribute__((used)) static int ll_union_merge(const struct ll_merge_driver *drv_unused,
     mmbuffer_t *result,
     const char *path_unused,
     mmfile_t *orig, const char *orig_name,
     mmfile_t *src1, const char *name1,
     mmfile_t *src2, const char *name2,
     const struct ll_merge_options *opts,
     int marker_size)
{

 struct ll_merge_options o;
 assert(opts);
 o = *opts;
 o.variant = XDL_MERGE_FAVOR_UNION;
 return ll_xdl_merge(drv_unused, result, path_unused,
       orig, ((void*)0), src1, ((void*)0), src2, ((void*)0),
       &o, marker_size);
}
