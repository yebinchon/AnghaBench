
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ctxlen; int interhunkctxlen; } ;
typedef TYPE_1__ xdemitconf_t ;
struct TYPE_7__ {long i1; long chg1; scalar_t__ chg2; scalar_t__ ignore; struct TYPE_7__* next; } ;
typedef TYPE_2__ xdchange_t ;



xdchange_t *xdl_get_hunk(xdchange_t **xscr, xdemitconf_t const *xecfg)
{
 xdchange_t *xch, *xchp, *lxch;
 long max_common = 2 * xecfg->ctxlen + xecfg->interhunkctxlen;
 long max_ignorable = xecfg->ctxlen;
 unsigned long ignored = 0;


 for (xchp = *xscr; xchp && xchp->ignore; xchp = xchp->next) {
  xch = xchp->next;

  if (xch == ((void*)0) ||
      xch->i1 - (xchp->i1 + xchp->chg1) >= max_ignorable)
   *xscr = xch;
 }

 if (*xscr == ((void*)0))
  return ((void*)0);

 lxch = *xscr;

 for (xchp = *xscr, xch = xchp->next; xch; xchp = xch, xch = xch->next) {
  long distance = xch->i1 - (xchp->i1 + xchp->chg1);
  if (distance > max_common)
   break;

  if (distance < max_ignorable && (!xch->ignore || lxch == xchp)) {
   lxch = xch;
   ignored = 0;
  } else if (distance < max_ignorable && xch->ignore) {
   ignored += xch->chg2;
  } else if (lxch != xchp &&
      xch->i1 + ignored - (lxch->i1 + lxch->chg1) > max_common) {
   break;
  } else if (!xch->ignore) {
   lxch = xch;
   ignored = 0;
  } else {
   ignored += xch->chg2;
  }
 }

 return lxch;
}
