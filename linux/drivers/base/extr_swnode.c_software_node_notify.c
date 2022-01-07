
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swnode {int kobj; } ;
struct fwnode_handle {struct fwnode_handle* secondary; } ;
struct device {int kobj; } ;




 struct fwnode_handle* dev_fwnode (struct device*) ;
 char* dev_name (struct device*) ;
 int is_software_node (struct fwnode_handle*) ;
 int kobject_get (int *) ;
 int kobject_put (int *) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 struct swnode* to_swnode (struct fwnode_handle*) ;

int software_node_notify(struct device *dev, unsigned long action)
{
 struct fwnode_handle *fwnode = dev_fwnode(dev);
 struct swnode *swnode;
 int ret;

 if (!fwnode)
  return 0;

 if (!is_software_node(fwnode))
  fwnode = fwnode->secondary;
 if (!is_software_node(fwnode))
  return 0;

 swnode = to_swnode(fwnode);

 switch (action) {
 case 129:
  ret = sysfs_create_link(&dev->kobj, &swnode->kobj,
     "software_node");
  if (ret)
   break;

  ret = sysfs_create_link(&swnode->kobj, &dev->kobj,
     dev_name(dev));
  if (ret) {
   sysfs_remove_link(&dev->kobj, "software_node");
   break;
  }
  kobject_get(&swnode->kobj);
  break;
 case 128:
  sysfs_remove_link(&swnode->kobj, dev_name(dev));
  sysfs_remove_link(&dev->kobj, "software_node");
  kobject_put(&swnode->kobj);
  break;
 default:
  break;
 }

 return 0;
}
