
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int type; } ;
struct kobj_uevent_env {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int ENODEV ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,char const*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static int vio_hotplug(struct device *dev, struct kobj_uevent_env *env)
{
 const struct vio_dev *vio_dev = to_vio_dev(dev);
 struct device_node *dn;
 const char *cp;

 dn = dev->of_node;
 if (!dn)
  return -ENODEV;
 cp = of_get_property(dn, "compatible", ((void*)0));
 if (!cp)
  return -ENODEV;

 add_uevent_var(env, "MODALIAS=vio:T%sS%s", vio_dev->type, cp);
 return 0;
}
