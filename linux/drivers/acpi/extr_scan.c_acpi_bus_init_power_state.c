
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; } ;
union acpi_object {scalar_t__ type; TYPE_1__ package; } ;
struct TYPE_8__ {int explicit_set; int valid; } ;
struct acpi_device_power_state {int power; int latency; TYPE_4__ flags; int resources; } ;
struct TYPE_6__ {int power_resources; } ;
struct TYPE_7__ {TYPE_2__ flags; struct acpi_device_power_state* states; } ;
struct acpi_device {int handle; TYPE_3__ power; } ;
struct acpi_buffer {union acpi_object* pointer; scalar_t__ length; int * member_1; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_evaluate_object (int ,char*,int *,struct acpi_buffer*) ;
 int acpi_extract_power_resources (union acpi_object*,int ,int *) ;
 scalar_t__ acpi_has_method (int ,char*) ;
 int list_empty (int *) ;

__attribute__((used)) static void acpi_bus_init_power_state(struct acpi_device *device, int state)
{
 struct acpi_device_power_state *ps = &device->power.states[state];
 char pathname[5] = { '_', 'P', 'R', '0' + state, '\0' };
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };
 acpi_status status;

 INIT_LIST_HEAD(&ps->resources);


 status = acpi_evaluate_object(device->handle, pathname, ((void*)0), &buffer);
 if (ACPI_SUCCESS(status)) {
  union acpi_object *package = buffer.pointer;

  if (buffer.length && package
      && package->type == ACPI_TYPE_PACKAGE
      && package->package.count) {
   int err = acpi_extract_power_resources(package, 0,
              &ps->resources);
   if (!err)
    device->power.flags.power_resources = 1;
  }
  ACPI_FREE(buffer.pointer);
 }


 pathname[2] = 'S';
 if (acpi_has_method(device->handle, pathname))
  ps->flags.explicit_set = 1;


 if (!list_empty(&ps->resources) || ps->flags.explicit_set)
  ps->flags.valid = 1;

 ps->power = -1;
 ps->latency = -1;
}
