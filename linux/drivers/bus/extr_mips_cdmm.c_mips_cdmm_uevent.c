
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_cdmm_device {int type; int rev; int cpu; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int add_uevent_var (struct kobj_uevent_env*,char*,int ) ;
 struct mips_cdmm_device* to_mips_cdmm_device (struct device*) ;

__attribute__((used)) static int mips_cdmm_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct mips_cdmm_device *cdev = to_mips_cdmm_device(dev);
 int retval = 0;

 retval = add_uevent_var(env, "CDMM_CPU=%u", cdev->cpu);
 if (retval)
  return retval;

 retval = add_uevent_var(env, "CDMM_TYPE=0x%02x", cdev->type);
 if (retval)
  return retval;

 retval = add_uevent_var(env, "CDMM_REV=%u", cdev->rev);
 if (retval)
  return retval;

 retval = add_uevent_var(env, "MODALIAS=mipscdmm:t%02X", cdev->type);
 return retval;
}
