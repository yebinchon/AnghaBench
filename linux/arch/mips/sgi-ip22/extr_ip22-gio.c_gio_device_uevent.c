
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobj_uevent_env {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct gio_device {TYPE_1__ id; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct gio_device* to_gio_device (struct device*) ;

__attribute__((used)) static int gio_device_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct gio_device *gio_dev = to_gio_device(dev);

 add_uevent_var(env, "MODALIAS=gio:%x", gio_dev->id.id);
 return 0;
}
