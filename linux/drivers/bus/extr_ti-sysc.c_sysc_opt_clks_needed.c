
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct sysc {TYPE_1__ cfg; } ;


 int SYSC_QUIRK_OPT_CLKS_NEEDED ;

__attribute__((used)) static bool sysc_opt_clks_needed(struct sysc *ddata)
{
 return !!(ddata->cfg.quirks & SYSC_QUIRK_OPT_CLKS_NEEDED);
}
