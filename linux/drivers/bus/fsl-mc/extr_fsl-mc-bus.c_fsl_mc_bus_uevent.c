
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobj_uevent_env {int dummy; } ;
struct TYPE_2__ {int type; int vendor; } ;
struct fsl_mc_device {TYPE_1__ obj_desc; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 struct fsl_mc_device* to_fsl_mc_device (struct device*) ;

__attribute__((used)) static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);

 if (add_uevent_var(env, "MODALIAS=fsl-mc:v%08Xd%s",
      mc_dev->obj_desc.vendor,
      mc_dev->obj_desc.type))
  return -ENOMEM;

 return 0;
}
