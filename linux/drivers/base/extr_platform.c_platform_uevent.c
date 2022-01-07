
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int PLATFORM_MODULE_PREFIX ;
 int acpi_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 int add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int platform_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct platform_device *pdev = to_platform_device(dev);
 int rc;


 rc = of_device_uevent_modalias(dev, env);
 if (rc != -ENODEV)
  return rc;

 rc = acpi_device_uevent_modalias(dev, env);
 if (rc != -ENODEV)
  return rc;

 add_uevent_var(env, "MODALIAS=%s%s", PLATFORM_MODULE_PREFIX,
   pdev->name);
 return 0;
}
