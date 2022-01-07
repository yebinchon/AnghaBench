
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int secondary; } ;
struct device {int dummy; } ;


 struct fwnode_handle* dev_fwnode (struct device*) ;
 int fwnode_remove_software_node (int ) ;
 scalar_t__ is_software_node (int ) ;
 int set_secondary_fwnode (struct device*,int *) ;

void device_remove_properties(struct device *dev)
{
 struct fwnode_handle *fwnode = dev_fwnode(dev);

 if (!fwnode)
  return;

 if (is_software_node(fwnode->secondary)) {
  fwnode_remove_software_node(fwnode->secondary);
  set_secondary_fwnode(dev, ((void*)0));
 }
}
