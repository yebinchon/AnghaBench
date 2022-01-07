
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {struct device_node* parent; } ;


 int of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 int omap_timer_add_disabled_property (struct device_node*) ;

__attribute__((used)) static int omap_timer_update_dt(struct device_node *np)
{
 int error = 0;

 if (!of_device_is_compatible(np, "ti,omap-counter32k")) {
  error = omap_timer_add_disabled_property(np);
  if (error)
   return error;
 }


 if (of_get_property(np, "ti,hwmods", ((void*)0)))
  return error;


 error = omap_timer_add_disabled_property(np->parent);
 if (error)
  return error;

 return 0;
}
