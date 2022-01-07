
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int flags; } ;
typedef TYPE_1__ xpparam_t ;
struct TYPE_22__ {TYPE_1__ xpp; } ;
typedef TYPE_2__ xmparam_t ;
struct TYPE_23__ {int xdf1; int xdf2; } ;
typedef TYPE_3__ xdfenv_t ;
typedef int xdchange_t ;
struct TYPE_24__ {scalar_t__ size; int ptr; } ;
typedef TYPE_4__ mmfile_t ;
struct TYPE_25__ {scalar_t__ size; int * ptr; } ;
typedef TYPE_5__ mmbuffer_t ;


 int memcpy (int *,int ,scalar_t__) ;
 scalar_t__ xdl_build_script (TYPE_3__*,int **) ;
 scalar_t__ xdl_change_compact (int *,int *,int ) ;
 scalar_t__ xdl_do_diff (TYPE_4__*,TYPE_4__*,TYPE_1__ const*,TYPE_3__*) ;
 int xdl_do_merge (TYPE_3__*,int *,TYPE_3__*,int *,TYPE_2__ const*,TYPE_5__*) ;
 int xdl_free_env (TYPE_3__*) ;
 int xdl_free_script (int *) ;
 void* xdl_malloc (scalar_t__) ;

int xdl_merge(mmfile_t *orig, mmfile_t *mf1, mmfile_t *mf2,
  xmparam_t const *xmp, mmbuffer_t *result)
{
 xdchange_t *xscr1, *xscr2;
 xdfenv_t xe1, xe2;
 int status;
 xpparam_t const *xpp = &xmp->xpp;

 result->ptr = ((void*)0);
 result->size = 0;

 if (xdl_do_diff(orig, mf1, xpp, &xe1) < 0) {
  return -1;
 }
 if (xdl_do_diff(orig, mf2, xpp, &xe2) < 0) {
  xdl_free_env(&xe1);
  return -1;
 }
 if (xdl_change_compact(&xe1.xdf1, &xe1.xdf2, xpp->flags) < 0 ||
     xdl_change_compact(&xe1.xdf2, &xe1.xdf1, xpp->flags) < 0 ||
     xdl_build_script(&xe1, &xscr1) < 0) {
  xdl_free_env(&xe1);
  return -1;
 }
 if (xdl_change_compact(&xe2.xdf1, &xe2.xdf2, xpp->flags) < 0 ||
     xdl_change_compact(&xe2.xdf2, &xe2.xdf1, xpp->flags) < 0 ||
     xdl_build_script(&xe2, &xscr2) < 0) {
  xdl_free_script(xscr1);
  xdl_free_env(&xe1);
  xdl_free_env(&xe2);
  return -1;
 }
 status = 0;
 if (!xscr1) {
  result->ptr = xdl_malloc(mf2->size);
  if (!result->ptr) {
   xdl_free_script(xscr2);
   xdl_free_env(&xe1);
   xdl_free_env(&xe2);
   return -1;
  }
  memcpy(result->ptr, mf2->ptr, mf2->size);
  result->size = mf2->size;
 } else if (!xscr2) {
  result->ptr = xdl_malloc(mf1->size);
  if (!result->ptr) {
   xdl_free_script(xscr1);
   xdl_free_env(&xe1);
   xdl_free_env(&xe2);
   return -1;
  }
  memcpy(result->ptr, mf1->ptr, mf1->size);
  result->size = mf1->size;
 } else {
  status = xdl_do_merge(&xe1, xscr1,
          &xe2, xscr2,
          xmp, result);
 }
 xdl_free_script(xscr1);
 xdl_free_script(xscr2);

 xdl_free_env(&xe1);
 xdl_free_env(&xe2);

 return status;
}
