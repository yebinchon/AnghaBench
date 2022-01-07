
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quirks; } ;
struct sysc {TYPE_1__ cfg; } ;
struct device {int dummy; } ;


 int SYSC_QUIRK_LEGACY_IDLE ;
 int dev_pm_domain_set (struct device*,int *) ;
 int sysc_child_pm_domain ;

__attribute__((used)) static void sysc_legacy_idle_quirk(struct sysc *ddata, struct device *child)
{
 if (ddata->cfg.quirks & SYSC_QUIRK_LEGACY_IDLE)
  dev_pm_domain_set(child, &sysc_child_pm_domain);
}
