
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;
typedef int guid_t ;


 int __find_bmc_guid ;
 struct device* driver_find_device (struct device_driver*,int *,int *,int ) ;
 int put_device (struct device*) ;
 struct bmc_device* to_bmc_device (struct device*) ;

__attribute__((used)) static struct bmc_device *ipmi_find_bmc_guid(struct device_driver *drv,
          guid_t *guid)
{
 struct device *dev;
 struct bmc_device *bmc = ((void*)0);

 dev = driver_find_device(drv, ((void*)0), guid, __find_bmc_guid);
 if (dev) {
  bmc = to_bmc_device(dev);
  put_device(dev);
 }
 return bmc;
}
