
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct dock_station {int handle; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_TYPE_INTEGER ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;
 int acpi_handle_err (int ,char*,scalar_t__) ;
 int acpi_handle_info (int ,char*,char*) ;

__attribute__((used)) static void handle_dock(struct dock_station *ds, int dock)
{
 acpi_status status;
 struct acpi_object_list arg_list;
 union acpi_object arg;
 unsigned long long value;

 acpi_handle_info(ds->handle, "%s\n", dock ? "docking" : "undocking");


 arg_list.count = 1;
 arg_list.pointer = &arg;
 arg.type = ACPI_TYPE_INTEGER;
 arg.integer.value = dock;
 status = acpi_evaluate_integer(ds->handle, "_DCK", &arg_list, &value);
 if (ACPI_FAILURE(status) && status != AE_NOT_FOUND)
  acpi_handle_err(ds->handle, "Failed to execute _DCK (0x%x)\n",
    status);
}
