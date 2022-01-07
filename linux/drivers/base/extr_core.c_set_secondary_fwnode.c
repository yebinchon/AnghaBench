
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {struct fwnode_handle* secondary; } ;
struct device {struct fwnode_handle* fwnode; } ;


 int ENODEV ;
 struct fwnode_handle* ERR_PTR (int ) ;
 scalar_t__ fwnode_is_primary (struct fwnode_handle*) ;

void set_secondary_fwnode(struct device *dev, struct fwnode_handle *fwnode)
{
 if (fwnode)
  fwnode->secondary = ERR_PTR(-ENODEV);

 if (fwnode_is_primary(dev->fwnode))
  dev->fwnode->secondary = fwnode;
 else
  dev->fwnode = fwnode;
}
