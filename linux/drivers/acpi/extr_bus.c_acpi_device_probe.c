
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int driver; } ;
struct TYPE_3__ {int (* add ) (struct acpi_device*) ;int (* remove ) (struct acpi_device*) ;scalar_t__ notify; } ;
struct acpi_driver {int name; TYPE_1__ ops; } ;
struct TYPE_4__ {int bus_id; } ;
struct acpi_device {TYPE_2__ pnp; int * driver_data; struct acpi_driver* driver; scalar_t__ handler; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int EINVAL ;
 int ENOSYS ;
 int acpi_device_install_notify_handler (struct acpi_device*) ;
 int acpi_is_pnp_device (struct acpi_device*) ;
 int get_device (struct device*) ;
 int stub1 (struct acpi_device*) ;
 int stub2 (struct acpi_device*) ;
 struct acpi_device* to_acpi_device (struct device*) ;
 struct acpi_driver* to_acpi_driver (int ) ;

__attribute__((used)) static int acpi_device_probe(struct device *dev)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_driver *acpi_drv = to_acpi_driver(dev->driver);
 int ret;

 if (acpi_dev->handler && !acpi_is_pnp_device(acpi_dev))
  return -EINVAL;

 if (!acpi_drv->ops.add)
  return -ENOSYS;

 ret = acpi_drv->ops.add(acpi_dev);
 if (ret)
  return ret;

 acpi_dev->driver = acpi_drv;
 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Driver [%s] successfully bound to device [%s]\n",
     acpi_drv->name, acpi_dev->pnp.bus_id));

 if (acpi_drv->ops.notify) {
  ret = acpi_device_install_notify_handler(acpi_dev);
  if (ret) {
   if (acpi_drv->ops.remove)
    acpi_drv->ops.remove(acpi_dev);

   acpi_dev->driver = ((void*)0);
   acpi_dev->driver_data = ((void*)0);
   return ret;
  }
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found driver [%s] for device [%s]\n",
     acpi_drv->name, acpi_dev->pnp.bus_id));
 get_device(dev);
 return 0;
}
