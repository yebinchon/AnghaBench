
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
typedef int u32 ;
struct device {int dummy; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ACPI_TYPE_INTEGER ;
 int ARRAY_SIZE (union acpi_object*) ;
 int EIO ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int acpi_tad_clear_status(struct device *dev, u32 timer_id)
{
 acpi_handle handle = ACPI_HANDLE(dev);
 union acpi_object args[] = {
  { .type = ACPI_TYPE_INTEGER, },
 };
 struct acpi_object_list arg_list = {
  .pointer = args,
  .count = ARRAY_SIZE(args),
 };
 unsigned long long retval;
 acpi_status status;

 args[0].integer.value = timer_id;

 pm_runtime_get_sync(dev);

 status = acpi_evaluate_integer(handle, "_CWS", &arg_list, &retval);

 pm_runtime_put_sync(dev);

 if (ACPI_FAILURE(status) || retval)
  return -EIO;

 return 0;
}
