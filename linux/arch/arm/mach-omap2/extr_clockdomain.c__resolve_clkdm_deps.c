
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int name; } ;
struct clkdm_dep {scalar_t__ clkdm_name; scalar_t__ clkdm; } ;


 int WARN (int,char*,int ,scalar_t__) ;
 scalar_t__ _clkdm_lookup (scalar_t__) ;

__attribute__((used)) static void _resolve_clkdm_deps(struct clockdomain *clkdm,
    struct clkdm_dep *clkdm_deps)
{
 struct clkdm_dep *cd;

 for (cd = clkdm_deps; cd && cd->clkdm_name; cd++) {
  if (cd->clkdm)
   continue;
  cd->clkdm = _clkdm_lookup(cd->clkdm_name);

  WARN(!cd->clkdm, "clockdomain: %s: could not find clkdm %s while resolving dependencies - should never happen",
       clkdm->name, cd->clkdm_name);
 }
}
