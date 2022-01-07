
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdsc_desc {size_t num; struct gdsc** scs; struct device* dev; } ;
struct gdsc {int pd; scalar_t__ parent; } ;
struct device {int of_node; } ;


 int of_genpd_del_provider (int ) ;
 int pm_genpd_remove_subdomain (scalar_t__,int *) ;

void gdsc_unregister(struct gdsc_desc *desc)
{
 int i;
 struct device *dev = desc->dev;
 struct gdsc **scs = desc->scs;
 size_t num = desc->num;


 for (i = 0; i < num; i++) {
  if (!scs[i])
   continue;
  if (scs[i]->parent)
   pm_genpd_remove_subdomain(scs[i]->parent, &scs[i]->pd);
 }
 of_genpd_del_provider(dev->of_node);
}
