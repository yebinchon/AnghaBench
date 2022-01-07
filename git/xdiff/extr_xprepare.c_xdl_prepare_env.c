
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xdlclassifier_t ;
struct TYPE_7__ {int xdf1; int xdf2; } ;
typedef TYPE_2__ xdfenv_t ;
typedef int mmfile_t ;
typedef int cf ;


 scalar_t__ XDF_DIFF_ALG (int ) ;
 scalar_t__ XDF_HISTOGRAM_DIFF ;
 scalar_t__ XDF_PATIENCE_DIFF ;
 long XDL_GUESS_NLINES1 ;
 long XDL_GUESS_NLINES2 ;
 int memset (int *,int ,int) ;
 int xdl_free_classifier (int *) ;
 int xdl_free_ctx (int *) ;
 int xdl_guess_lines (int *,long) ;
 scalar_t__ xdl_init_classifier (int *,long,int ) ;
 scalar_t__ xdl_optimize_ctxs (int *,int *,int *) ;
 scalar_t__ xdl_prepare_ctx (int,int *,long,TYPE_1__ const*,int *,int *) ;

int xdl_prepare_env(mmfile_t *mf1, mmfile_t *mf2, xpparam_t const *xpp,
      xdfenv_t *xe) {
 long enl1, enl2, sample;
 xdlclassifier_t cf;

 memset(&cf, 0, sizeof(cf));
 sample = (XDF_DIFF_ALG(xpp->flags) == XDF_HISTOGRAM_DIFF
    ? XDL_GUESS_NLINES2 : XDL_GUESS_NLINES1);

 enl1 = xdl_guess_lines(mf1, sample) + 1;
 enl2 = xdl_guess_lines(mf2, sample) + 1;

 if (XDF_DIFF_ALG(xpp->flags) != XDF_HISTOGRAM_DIFF &&
     xdl_init_classifier(&cf, enl1 + enl2 + 1, xpp->flags) < 0)
  return -1;

 if (xdl_prepare_ctx(1, mf1, enl1, xpp, &cf, &xe->xdf1) < 0) {

  xdl_free_classifier(&cf);
  return -1;
 }
 if (xdl_prepare_ctx(2, mf2, enl2, xpp, &cf, &xe->xdf2) < 0) {

  xdl_free_ctx(&xe->xdf1);
  xdl_free_classifier(&cf);
  return -1;
 }

 if ((XDF_DIFF_ALG(xpp->flags) != XDF_PATIENCE_DIFF) &&
     (XDF_DIFF_ALG(xpp->flags) != XDF_HISTOGRAM_DIFF) &&
     xdl_optimize_ctxs(&cf, &xe->xdf1, &xe->xdf2) < 0) {

  xdl_free_ctx(&xe->xdf2);
  xdl_free_ctx(&xe->xdf1);
  xdl_free_classifier(&cf);
  return -1;
 }

 if (XDF_DIFF_ALG(xpp->flags) != XDF_HISTOGRAM_DIFF)
  xdl_free_classifier(&cf);

 return 0;
}
