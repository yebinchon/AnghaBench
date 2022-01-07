
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* name; char* value; int length; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct property* kzalloc (int,int ) ;
 int of_add_property (struct device_node*,struct property*) ;
 int strlen (char*) ;

__attribute__((used)) static int omap_timer_add_disabled_property(struct device_node *np)
{
 struct property *prop;

 prop = kzalloc(sizeof(*prop), GFP_KERNEL);
 if (!prop)
  return -ENOMEM;

 prop->name = "status";
 prop->value = "disabled";
 prop->length = strlen(prop->value);

 return of_add_property(np, prop);
}
