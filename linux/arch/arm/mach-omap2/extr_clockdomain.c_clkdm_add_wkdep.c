
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clockdomain {int wkdep_srcs; } ;
struct clkdm_dep {TYPE_2__* clkdm; } ;
struct TYPE_3__ {int ptr; } ;
struct TYPE_4__ {TYPE_1__ pwrdm; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clkdm_dep*) ;
 int PTR_ERR (struct clkdm_dep*) ;
 int _clkdm_add_wkdep (struct clockdomain*,struct clockdomain*) ;
 struct clkdm_dep* _clkdm_deps_lookup (struct clockdomain*,int ) ;
 int pwrdm_lock (int ) ;
 int pwrdm_unlock (int ) ;

int clkdm_add_wkdep(struct clockdomain *clkdm1, struct clockdomain *clkdm2)
{
 struct clkdm_dep *cd;
 int ret;

 if (!clkdm1 || !clkdm2)
  return -EINVAL;

 cd = _clkdm_deps_lookup(clkdm2, clkdm1->wkdep_srcs);
 if (IS_ERR(cd))
  return PTR_ERR(cd);

 pwrdm_lock(cd->clkdm->pwrdm.ptr);
 ret = _clkdm_add_wkdep(clkdm1, clkdm2);
 pwrdm_unlock(cd->clkdm->pwrdm.ptr);

 return ret;
}
