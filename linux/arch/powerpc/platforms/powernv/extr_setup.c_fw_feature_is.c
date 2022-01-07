
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_get_child_by_name (struct device_node*,char const*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_bool (struct device_node*,char const*) ;

__attribute__((used)) static bool fw_feature_is(const char *state, const char *name,
     struct device_node *fw_features)
{
 struct device_node *np;
 bool rc = 0;

 np = of_get_child_by_name(fw_features, name);
 if (np) {
  rc = of_property_read_bool(np, state);
  of_node_put(np);
 }

 return rc;
}
