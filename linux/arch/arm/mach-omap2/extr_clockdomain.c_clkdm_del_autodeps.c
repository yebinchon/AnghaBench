
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct clockdomain {int flags; int name; } ;
struct TYPE_5__ {TYPE_2__* ptr; } ;
struct clkdm_autodep {TYPE_1__ clkdm; } ;
struct TYPE_6__ {int name; } ;


 int CLKDM_NO_AUTODEPS ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int _clkdm_del_sleepdep (struct clockdomain*,TYPE_2__*) ;
 int _clkdm_del_wkdep (struct clockdomain*,TYPE_2__*) ;
 struct clkdm_autodep* autodeps ;
 int pr_debug (char*,int ,int ) ;

void clkdm_del_autodeps(struct clockdomain *clkdm)
{
 struct clkdm_autodep *autodep;

 if (!autodeps || clkdm->flags & CLKDM_NO_AUTODEPS)
  return;

 for (autodep = autodeps; autodep->clkdm.ptr; autodep++) {
  if (IS_ERR(autodep->clkdm.ptr))
   continue;

  pr_debug("clockdomain: %s: removing %s sleepdep/wkdep\n",
    clkdm->name, autodep->clkdm.ptr->name);

  _clkdm_del_sleepdep(clkdm, autodep->clkdm.ptr);
  _clkdm_del_wkdep(clkdm, autodep->clkdm.ptr);
 }
}
