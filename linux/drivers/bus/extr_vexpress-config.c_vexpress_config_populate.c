
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 struct device* class_find_device (int ,int *,struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_platform_populate (struct device_node*,int *,int *,struct device*) ;
 int put_device (struct device*) ;
 int vexpress_config_class ;
 int vexpress_config_node_match ;

__attribute__((used)) static int vexpress_config_populate(struct device_node *node)
{
 struct device_node *bridge;
 struct device *parent;
 int ret;

 bridge = of_parse_phandle(node, "arm,vexpress,config-bridge", 0);
 if (!bridge)
  return -EINVAL;

 parent = class_find_device(vexpress_config_class, ((void*)0), bridge,
   vexpress_config_node_match);
 of_node_put(bridge);
 if (WARN_ON(!parent))
  return -ENODEV;

 ret = of_platform_populate(node, ((void*)0), ((void*)0), parent);

 put_device(parent);

 return ret;
}
