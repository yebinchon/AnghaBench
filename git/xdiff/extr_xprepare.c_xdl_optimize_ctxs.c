
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdlclassifier_t ;
typedef int xdfile_t ;


 scalar_t__ xdl_cleanup_records (int *,int *,int *) ;
 scalar_t__ xdl_trim_ends (int *,int *) ;

__attribute__((used)) static int xdl_optimize_ctxs(xdlclassifier_t *cf, xdfile_t *xdf1, xdfile_t *xdf2) {

 if (xdl_trim_ends(xdf1, xdf2) < 0 ||
     xdl_cleanup_records(cf, xdf1, xdf2) < 0) {

  return -1;
 }

 return 0;
}
