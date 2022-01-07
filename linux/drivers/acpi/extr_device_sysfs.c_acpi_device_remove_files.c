
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ bus_address; } ;
struct TYPE_10__ {TYPE_4__ type; scalar_t__ unique_id; int str_obj; } ;
struct TYPE_7__ {scalar_t__ power_resources; } ;
struct TYPE_8__ {TYPE_2__ flags; } ;
struct TYPE_6__ {scalar_t__ power_manageable; } ;
struct acpi_device {int dev; scalar_t__ handle; TYPE_5__ pnp; TYPE_3__ power; TYPE_1__ flags; int data; } ;


 scalar_t__ acpi_has_method (scalar_t__,char*) ;
 int acpi_hide_nondev_subnodes (int *) ;
 int dev_attr_adr ;
 int dev_attr_description ;
 int dev_attr_eject ;
 int dev_attr_hid ;
 int dev_attr_hrv ;
 int dev_attr_modalias ;
 int dev_attr_path ;
 int dev_attr_power_state ;
 int dev_attr_real_power_state ;
 int dev_attr_status ;
 int dev_attr_sun ;
 int dev_attr_uid ;
 int device_remove_file (int *,int *) ;
 int kfree (int ) ;

void acpi_device_remove_files(struct acpi_device *dev)
{
 acpi_hide_nondev_subnodes(&dev->data);

 if (dev->flags.power_manageable) {
  device_remove_file(&dev->dev, &dev_attr_power_state);
  if (dev->power.flags.power_resources)
   device_remove_file(&dev->dev,
        &dev_attr_real_power_state);
 }




 if (acpi_has_method(dev->handle, "_STR")) {
  kfree(dev->pnp.str_obj);
  device_remove_file(&dev->dev, &dev_attr_description);
 }



 if (acpi_has_method(dev->handle, "_EJ0"))
  device_remove_file(&dev->dev, &dev_attr_eject);

 if (acpi_has_method(dev->handle, "_SUN"))
  device_remove_file(&dev->dev, &dev_attr_sun);

 if (acpi_has_method(dev->handle, "_HRV"))
  device_remove_file(&dev->dev, &dev_attr_hrv);

 if (dev->pnp.unique_id)
  device_remove_file(&dev->dev, &dev_attr_uid);
 if (dev->pnp.type.bus_address)
  device_remove_file(&dev->dev, &dev_attr_adr);
 device_remove_file(&dev->dev, &dev_attr_modalias);
 device_remove_file(&dev->dev, &dev_attr_hid);
 if (acpi_has_method(dev->handle, "_STA"))
  device_remove_file(&dev->dev, &dev_attr_status);
 if (dev->handle)
  device_remove_file(&dev->dev, &dev_attr_path);
}
