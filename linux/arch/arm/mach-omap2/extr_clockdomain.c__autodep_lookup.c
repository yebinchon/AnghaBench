
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clockdomain {int dummy; } ;
struct TYPE_2__ {struct clockdomain* ptr; int name; } ;
struct clkdm_autodep {TYPE_1__ clkdm; } ;


 int ENOENT ;
 struct clockdomain* ERR_PTR (int ) ;
 struct clockdomain* clkdm_lookup (int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void _autodep_lookup(struct clkdm_autodep *autodep)
{
 struct clockdomain *clkdm;

 if (!autodep)
  return;

 clkdm = clkdm_lookup(autodep->clkdm.name);
 if (!clkdm) {
  pr_err("clockdomain: autodeps: clockdomain %s does not exist\n",
    autodep->clkdm.name);
  clkdm = ERR_PTR(-ENOENT);
 }
 autodep->clkdm.ptr = clkdm;
}
