
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int count; union acpi_object* elements; } ;
struct TYPE_4__ {int * handle; } ;
union acpi_object {scalar_t__ type; TYPE_3__ integer; TYPE_2__ package; TYPE_1__ reference; } ;
typedef int u32 ;
struct acpi_device_wakeup {int gpe_number; int sleep_state; int resources; int * gpe_device; } ;
struct acpi_device {struct acpi_device_wakeup wakeup; int handle; } ;
struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_INFO ;
 int ENODATA ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int acpi_extract_power_resources (union acpi_object*,int,int *) ;
 int acpi_handle_warn (int ,char*,...) ;
 int acpi_power_resources_list_free (int *) ;
 int acpi_power_wakeup_list_init (int *,int*) ;
 int kfree (scalar_t__) ;
 int list_empty (int *) ;

__attribute__((used)) static int acpi_bus_extract_wakeup_device_power_package(struct acpi_device *dev)
{
 acpi_handle handle = dev->handle;
 struct acpi_device_wakeup *wakeup = &dev->wakeup;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 union acpi_object *package = ((void*)0);
 union acpi_object *element = ((void*)0);
 acpi_status status;
 int err = -ENODATA;

 INIT_LIST_HEAD(&wakeup->resources);


 status = acpi_evaluate_object(handle, "_PRW", ((void*)0), &buffer);
 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _PRW"));
  return err;
 }

 package = (union acpi_object *)buffer.pointer;

 if (!package || package->package.count < 2)
  goto out;

 element = &(package->package.elements[0]);
 if (!element)
  goto out;

 if (element->type == ACPI_TYPE_PACKAGE) {
  if ((element->package.count < 2) ||
      (element->package.elements[0].type !=
       ACPI_TYPE_LOCAL_REFERENCE)
      || (element->package.elements[1].type != ACPI_TYPE_INTEGER))
   goto out;

  wakeup->gpe_device =
      element->package.elements[0].reference.handle;
  wakeup->gpe_number =
      (u32) element->package.elements[1].integer.value;
 } else if (element->type == ACPI_TYPE_INTEGER) {
  wakeup->gpe_device = ((void*)0);
  wakeup->gpe_number = element->integer.value;
 } else {
  goto out;
 }

 element = &(package->package.elements[1]);
 if (element->type != ACPI_TYPE_INTEGER)
  goto out;

 wakeup->sleep_state = element->integer.value;

 err = acpi_extract_power_resources(package, 2, &wakeup->resources);
 if (err)
  goto out;

 if (!list_empty(&wakeup->resources)) {
  int sleep_state;

  err = acpi_power_wakeup_list_init(&wakeup->resources,
        &sleep_state);
  if (err) {
   acpi_handle_warn(handle, "Retrieving current states "
      "of wakeup power resources failed\n");
   acpi_power_resources_list_free(&wakeup->resources);
   goto out;
  }
  if (sleep_state < wakeup->sleep_state) {
   acpi_handle_warn(handle, "Overriding _PRW sleep state "
      "(S%d) by S%d from power resources\n",
      (int)wakeup->sleep_state, sleep_state);
   wakeup->sleep_state = sleep_state;
  }
 }

 out:
 kfree(buffer.pointer);
 return err;
}
