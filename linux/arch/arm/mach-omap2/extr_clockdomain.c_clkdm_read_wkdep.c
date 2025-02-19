
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clockdomain {int name; int wkdep_srcs; } ;
struct clkdm_dep {int dummy; } ;
struct TYPE_2__ {int (* clkdm_read_wkdep ) (struct clockdomain*,struct clockdomain*) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clkdm_dep*) ;
 int PTR_ERR (struct clkdm_dep*) ;
 struct clkdm_dep* _clkdm_deps_lookup (struct clockdomain*,int ) ;
 TYPE_1__* arch_clkdm ;
 int pr_debug (char*,int ,int ) ;
 int stub1 (struct clockdomain*,struct clockdomain*) ;

int clkdm_read_wkdep(struct clockdomain *clkdm1, struct clockdomain *clkdm2)
{
 struct clkdm_dep *cd;
 int ret = 0;

 if (!clkdm1 || !clkdm2)
  return -EINVAL;

 cd = _clkdm_deps_lookup(clkdm2, clkdm1->wkdep_srcs);
 if (IS_ERR(cd))
  ret = PTR_ERR(cd);

 if (!arch_clkdm || !arch_clkdm->clkdm_read_wkdep)
  ret = -EINVAL;

 if (ret) {
  pr_debug("clockdomain: hardware cannot set/clear wake up of %s when %s wakes up\n",
    clkdm1->name, clkdm2->name);
  return ret;
 }


 return arch_clkdm->clkdm_read_wkdep(clkdm1, clkdm2);
}
