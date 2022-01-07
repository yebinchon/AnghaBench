
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct fwnode_handle*) ;
 int PTR_ERR (struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_create_software_node (struct property_entry const*,int *) ;
 int set_secondary_fwnode (struct device*,struct fwnode_handle*) ;

int device_add_properties(struct device *dev,
     const struct property_entry *properties)
{
 struct fwnode_handle *fwnode;

 fwnode = fwnode_create_software_node(properties, ((void*)0));
 if (IS_ERR(fwnode))
  return PTR_ERR(fwnode);

 set_secondary_fwnode(dev, fwnode);
 return 0;
}
