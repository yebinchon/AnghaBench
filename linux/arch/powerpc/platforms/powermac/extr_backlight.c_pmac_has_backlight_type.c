
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_name (int *,char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

int pmac_has_backlight_type(const char *type)
{
 struct device_node* bk_node = of_find_node_by_name(((void*)0), "backlight");

 if (bk_node) {
  const char *prop = of_get_property(bk_node,
    "backlight-control", ((void*)0));
  if (prop && strncmp(prop, type, strlen(type)) == 0) {
   of_node_put(bk_node);
   return 1;
  }
  of_node_put(bk_node);
 }

 return 0;
}
