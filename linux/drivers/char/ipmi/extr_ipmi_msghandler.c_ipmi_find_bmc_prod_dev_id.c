
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prod_dev_id {unsigned int product_id; unsigned char device_id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct bmc_device {int dummy; } ;


 int __find_bmc_prod_dev_id ;
 struct device* driver_find_device (struct device_driver*,int *,struct prod_dev_id*,int ) ;
 int put_device (struct device*) ;
 struct bmc_device* to_bmc_device (struct device*) ;

__attribute__((used)) static struct bmc_device *ipmi_find_bmc_prod_dev_id(
 struct device_driver *drv,
 unsigned int product_id, unsigned char device_id)
{
 struct prod_dev_id id = {
  .product_id = product_id,
  .device_id = device_id,
 };
 struct device *dev;
 struct bmc_device *bmc = ((void*)0);

 dev = driver_find_device(drv, ((void*)0), &id, __find_bmc_prod_dev_id);
 if (dev) {
  bmc = to_bmc_device(dev);
  put_device(dev);
 }
 return bmc;
}
