
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 struct fwnode_handle* fwnode_get_named_child_node (int ,char const*) ;

struct fwnode_handle *device_get_named_child_node(struct device *dev,
        const char *childname)
{
 return fwnode_get_named_child_node(dev_fwnode(dev), childname);
}
