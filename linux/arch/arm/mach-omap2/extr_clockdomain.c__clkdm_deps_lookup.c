
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;
struct clkdm_dep {scalar_t__ clkdm_name; struct clockdomain* clkdm; } ;


 int EINVAL ;
 int ENOENT ;
 struct clkdm_dep* ERR_PTR (int ) ;
 struct clockdomain* _clkdm_lookup (scalar_t__) ;

__attribute__((used)) static struct clkdm_dep *_clkdm_deps_lookup(struct clockdomain *clkdm,
         struct clkdm_dep *deps)
{
 struct clkdm_dep *cd;

 if (!clkdm || !deps)
  return ERR_PTR(-EINVAL);

 for (cd = deps; cd->clkdm_name; cd++) {
  if (!cd->clkdm && cd->clkdm_name)
   cd->clkdm = _clkdm_lookup(cd->clkdm_name);

  if (cd->clkdm == clkdm)
   break;
 }

 if (!cd->clkdm_name)
  return ERR_PTR(-ENOENT);

 return cd;
}
