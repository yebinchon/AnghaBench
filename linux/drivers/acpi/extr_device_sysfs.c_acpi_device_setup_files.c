
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int kobj; } ;
struct TYPE_10__ {scalar_t__ power_resources; } ;
struct TYPE_11__ {TYPE_4__ flags; } ;
struct TYPE_9__ {scalar_t__ power_manageable; } ;
struct TYPE_7__ {scalar_t__ bus_address; } ;
struct TYPE_8__ {scalar_t__ unique_id; TYPE_1__ type; int * str_obj; int ids; } ;
struct acpi_device {int data; TYPE_6__ dev; TYPE_5__ power; TYPE_3__ flags; scalar_t__ handle; TYPE_2__ pnp; } ;
struct acpi_buffer {int * pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_object (scalar_t__,char*,int *,struct acpi_buffer*) ;
 int acpi_expose_nondev_subnodes (int *,int *) ;
 scalar_t__ acpi_has_method (scalar_t__,char*) ;
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
 int device_create_file (TYPE_6__*,int *) ;
 int list_empty (int *) ;

int acpi_device_setup_files(struct acpi_device *dev)
{
 struct acpi_buffer buffer = {ACPI_ALLOCATE_BUFFER, ((void*)0)};
 acpi_status status;
 int result = 0;




 if (dev->handle) {
  result = device_create_file(&dev->dev, &dev_attr_path);
  if (result)
   goto end;
 }

 if (!list_empty(&dev->pnp.ids)) {
  result = device_create_file(&dev->dev, &dev_attr_hid);
  if (result)
   goto end;

  result = device_create_file(&dev->dev, &dev_attr_modalias);
  if (result)
   goto end;
 }




 if (acpi_has_method(dev->handle, "_STR")) {
  status = acpi_evaluate_object(dev->handle, "_STR",
     ((void*)0), &buffer);
  if (ACPI_FAILURE(status))
   buffer.pointer = ((void*)0);
  dev->pnp.str_obj = buffer.pointer;
  result = device_create_file(&dev->dev, &dev_attr_description);
  if (result)
   goto end;
 }

 if (dev->pnp.type.bus_address)
  result = device_create_file(&dev->dev, &dev_attr_adr);
 if (dev->pnp.unique_id)
  result = device_create_file(&dev->dev, &dev_attr_uid);

 if (acpi_has_method(dev->handle, "_SUN")) {
  result = device_create_file(&dev->dev, &dev_attr_sun);
  if (result)
   goto end;
 }

 if (acpi_has_method(dev->handle, "_HRV")) {
  result = device_create_file(&dev->dev, &dev_attr_hrv);
  if (result)
   goto end;
 }

 if (acpi_has_method(dev->handle, "_STA")) {
  result = device_create_file(&dev->dev, &dev_attr_status);
  if (result)
   goto end;
 }





 if (acpi_has_method(dev->handle, "_EJ0")) {
  result = device_create_file(&dev->dev, &dev_attr_eject);
  if (result)
   return result;
 }

 if (dev->flags.power_manageable) {
  result = device_create_file(&dev->dev, &dev_attr_power_state);
  if (result)
   return result;

  if (dev->power.flags.power_resources)
   result = device_create_file(&dev->dev,
          &dev_attr_real_power_state);
 }

 acpi_expose_nondev_subnodes(&dev->dev.kobj, &dev->data);

end:
 return result;
}
