
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {long nrec; } ;
struct TYPE_16__ {TYPE_7__ xdf2; TYPE_7__ xdf1; } ;
typedef TYPE_1__ xdfenv_t ;
struct TYPE_17__ {long ctxlen; int flags; } ;
typedef TYPE_2__ xdemitconf_t ;
typedef int xdemitcb_t ;
struct TYPE_18__ {long i1; long i2; int chg1; int chg2; struct TYPE_18__* next; } ;
typedef TYPE_3__ xdchange_t ;
struct func_line {int len; int buf; int member_0; } ;


 int XDL_EMIT_FUNCCONTEXT ;
 int XDL_EMIT_FUNCNAMES ;
 long XDL_MAX (long,int ) ;
 long XDL_MIN (long,int) ;
 scalar_t__ get_func_line (TYPE_1__*,TYPE_2__ const*,struct func_line*,long,long) ;
 scalar_t__ is_empty_rec (TYPE_7__*,long) ;
 scalar_t__ is_func_rec (TYPE_7__*,TYPE_2__ const*,long) ;
 scalar_t__ xdl_emit_hunk_hdr (long,long,long,long,int ,int ,int *) ;
 scalar_t__ xdl_emit_record (TYPE_7__*,long,char*,int *) ;
 TYPE_3__* xdl_get_hunk (TYPE_3__**,TYPE_2__ const*) ;

int xdl_emit_diff(xdfenv_t *xe, xdchange_t *xscr, xdemitcb_t *ecb,
    xdemitconf_t const *xecfg) {
 long s1, s2, e1, e2, lctx;
 xdchange_t *xch, *xche;
 long funclineprev = -1;
 struct func_line func_line = { 0 };

 for (xch = xscr; xch; xch = xche->next) {
  xche = xdl_get_hunk(&xch, xecfg);
  if (!xch)
   break;

  s1 = XDL_MAX(xch->i1 - xecfg->ctxlen, 0);
  s2 = XDL_MAX(xch->i2 - xecfg->ctxlen, 0);

  if (xecfg->flags & XDL_EMIT_FUNCCONTEXT) {
   long fs1, i1 = xch->i1;


   if (i1 >= xe->xdf1.nrec) {
    long i2 = xch->i2;





    while (i2 < xe->xdf2.nrec) {
     if (is_func_rec(&xe->xdf2, xecfg, i2))
      goto post_context_calculation;
     i2++;
    }





    i1 = xe->xdf1.nrec - 1;
   }

   fs1 = get_func_line(xe, xecfg, ((void*)0), i1, -1);
   while (fs1 > 0 && !is_empty_rec(&xe->xdf1, fs1 - 1) &&
          !is_func_rec(&xe->xdf1, xecfg, fs1 - 1))
    fs1--;
   if (fs1 < 0)
    fs1 = 0;
   if (fs1 < s1) {
    s2 = XDL_MAX(s2 - (s1 - fs1), 0);
    s1 = fs1;
   }
  }

 post_context_calculation:
  lctx = xecfg->ctxlen;
  lctx = XDL_MIN(lctx, xe->xdf1.nrec - (xche->i1 + xche->chg1));
  lctx = XDL_MIN(lctx, xe->xdf2.nrec - (xche->i2 + xche->chg2));

  e1 = xche->i1 + xche->chg1 + lctx;
  e2 = xche->i2 + xche->chg2 + lctx;

  if (xecfg->flags & XDL_EMIT_FUNCCONTEXT) {
   long fe1 = get_func_line(xe, xecfg, ((void*)0),
       xche->i1 + xche->chg1,
       xe->xdf1.nrec);
   while (fe1 > 0 && is_empty_rec(&xe->xdf1, fe1 - 1))
    fe1--;
   if (fe1 < 0)
    fe1 = xe->xdf1.nrec;
   if (fe1 > e1) {
    e2 = XDL_MIN(e2 + (fe1 - e1), xe->xdf2.nrec);
    e1 = fe1;
   }






   if (xche->next) {
    long l = XDL_MIN(xche->next->i1,
       xe->xdf1.nrec - 1);
    if (l - xecfg->ctxlen <= e1 ||
        get_func_line(xe, xecfg, ((void*)0), l, e1) < 0) {
     xche = xche->next;
     goto post_context_calculation;
    }
   }
  }





  if (xecfg->flags & XDL_EMIT_FUNCNAMES) {
   get_func_line(xe, xecfg, &func_line,
          s1 - 1, funclineprev);
   funclineprev = s1 - 1;
  }
  if (xdl_emit_hunk_hdr(s1 + 1, e1 - s1, s2 + 1, e2 - s2,
          func_line.buf, func_line.len, ecb) < 0)
   return -1;




  for (; s2 < xch->i2; s2++)
   if (xdl_emit_record(&xe->xdf2, s2, " ", ecb) < 0)
    return -1;

  for (s1 = xch->i1, s2 = xch->i2;; xch = xch->next) {



   for (; s1 < xch->i1 && s2 < xch->i2; s1++, s2++)
    if (xdl_emit_record(&xe->xdf2, s2, " ", ecb) < 0)
     return -1;




   for (s1 = xch->i1; s1 < xch->i1 + xch->chg1; s1++)
    if (xdl_emit_record(&xe->xdf1, s1, "-", ecb) < 0)
     return -1;




   for (s2 = xch->i2; s2 < xch->i2 + xch->chg2; s2++)
    if (xdl_emit_record(&xe->xdf2, s2, "+", ecb) < 0)
     return -1;

   if (xch == xche)
    break;
   s1 = xch->i1 + xch->chg1;
   s2 = xch->i2 + xch->chg2;
  }




  for (s2 = xche->i2 + xche->chg2; s2 < e2; s2++)
   if (xdl_emit_record(&xe->xdf2, s2, " ", ecb) < 0)
    return -1;
 }

 return 0;
}
