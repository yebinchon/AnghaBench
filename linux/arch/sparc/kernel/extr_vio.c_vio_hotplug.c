
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int compat; int type; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct vio_dev* to_vio_dev (struct device*) ;

__attribute__((used)) static int vio_hotplug(struct device *dev, struct kobj_uevent_env *env)
{
 const struct vio_dev *vio_dev = to_vio_dev(dev);

 add_uevent_var(env, "MODALIAS=vio:T%sS%s", vio_dev->type, vio_dev->compat);
 return 0;
}
