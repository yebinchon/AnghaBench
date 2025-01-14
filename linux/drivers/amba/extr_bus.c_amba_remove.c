
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct amba_driver {int (* remove ) (struct amba_device*) ;} ;
struct amba_device {int dummy; } ;


 int amba_put_disable_pclk (struct amba_device*) ;
 int dev_pm_domain_detach (struct device*,int) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int stub1 (struct amba_device*) ;
 struct amba_device* to_amba_device (struct device*) ;
 struct amba_driver* to_amba_driver (int ) ;

__attribute__((used)) static int amba_remove(struct device *dev)
{
 struct amba_device *pcdev = to_amba_device(dev);
 struct amba_driver *drv = to_amba_driver(dev->driver);
 int ret;

 pm_runtime_get_sync(dev);
 ret = drv->remove(pcdev);
 pm_runtime_put_noidle(dev);


 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_put_noidle(dev);

 amba_put_disable_pclk(pcdev);
 dev_pm_domain_detach(dev, 1);

 return ret;
}
