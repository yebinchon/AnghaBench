
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_handle_list {int count; int * handles; } ;
struct TYPE_2__ {int string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
struct acpi_device {scalar_t__ dep_unmet; int handle; int dev; } ;
struct acpi_dep_data {int node; int slave; int master; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_VALID_HID ;
 int GFP_KERNEL ;
 int acpi_dep_list ;
 int acpi_dep_list_lock ;
 int acpi_evaluate_reference (int ,char*,int *,struct acpi_handle_list*) ;
 int acpi_get_object_info (int ,struct acpi_device_info**) ;
 int acpi_has_method (int ,char*) ;
 int dev_dbg (int *,char*) ;
 int kfree (struct acpi_device_info*) ;
 struct acpi_dep_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void acpi_device_dep_initialize(struct acpi_device *adev)
{
 struct acpi_dep_data *dep;
 struct acpi_handle_list dep_devices;
 acpi_status status;
 int i;

 adev->dep_unmet = 0;

 if (!acpi_has_method(adev->handle, "_DEP"))
  return;

 status = acpi_evaluate_reference(adev->handle, "_DEP", ((void*)0),
     &dep_devices);
 if (ACPI_FAILURE(status)) {
  dev_dbg(&adev->dev, "Failed to evaluate _DEP.\n");
  return;
 }

 for (i = 0; i < dep_devices.count; i++) {
  struct acpi_device_info *info;
  int skip;

  status = acpi_get_object_info(dep_devices.handles[i], &info);
  if (ACPI_FAILURE(status)) {
   dev_dbg(&adev->dev, "Error reading _DEP device info\n");
   continue;
  }





  skip = info->valid & ACPI_VALID_HID &&
   !strcmp(info->hardware_id.string, "INT3396");

  kfree(info);

  if (skip)
   continue;

  dep = kzalloc(sizeof(struct acpi_dep_data), GFP_KERNEL);
  if (!dep)
   return;

  dep->master = dep_devices.handles[i];
  dep->slave = adev->handle;
  adev->dep_unmet++;

  mutex_lock(&acpi_dep_list_lock);
  list_add_tail(&dep->node , &acpi_dep_list);
  mutex_unlock(&acpi_dep_list_lock);
 }
}
