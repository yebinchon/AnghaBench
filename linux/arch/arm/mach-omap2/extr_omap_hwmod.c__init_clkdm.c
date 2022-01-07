
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int clkdm_name; int name; int clkdm; } ;


 int clkdm_lookup (int ) ;
 int pr_debug (char*,int ,...) ;
 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static int _init_clkdm(struct omap_hwmod *oh)
{
 if (!oh->clkdm_name) {
  pr_debug("omap_hwmod: %s: missing clockdomain\n", oh->name);
  return 0;
 }

 oh->clkdm = clkdm_lookup(oh->clkdm_name);
 if (!oh->clkdm) {
  pr_warn("omap_hwmod: %s: could not associate to clkdm %s\n",
   oh->name, oh->clkdm_name);
  return 0;
 }

 pr_debug("omap_hwmod: %s: associated to clkdm %s\n",
  oh->name, oh->clkdm_name);

 return 0;
}
