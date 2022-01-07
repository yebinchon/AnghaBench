
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int * pointer; } ;
union acpi_object {TYPE_1__ buffer; int type; } ;
typedef int u8 ;
struct device {int dummy; } ;
struct acpi_tad_rt {int year; int month; int hour; int minute; int second; int tz; int daylight; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ACPI_TYPE_BUFFER ;
 int ARRAY_SIZE (union acpi_object*) ;
 int EIO ;
 int ERANGE ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static int acpi_tad_set_real_time(struct device *dev, struct acpi_tad_rt *rt)
{
 acpi_handle handle = ACPI_HANDLE(dev);
 union acpi_object args[] = {
  { .type = ACPI_TYPE_BUFFER, },
 };
 struct acpi_object_list arg_list = {
  .pointer = args,
  .count = ARRAY_SIZE(args),
 };
 unsigned long long retval;
 acpi_status status;

 if (rt->year < 1900 || rt->year > 9999 ||
     rt->month < 1 || rt->month > 12 ||
     rt->hour > 23 || rt->minute > 59 || rt->second > 59 ||
     rt->tz < -1440 || (rt->tz > 1440 && rt->tz != 2047) ||
     rt->daylight > 3)
  return -ERANGE;

 args[0].buffer.pointer = (u8 *)rt;
 args[0].buffer.length = sizeof(*rt);

 pm_runtime_get_sync(dev);

 status = acpi_evaluate_integer(handle, "_SRT", &arg_list, &retval);

 pm_runtime_put_sync(dev);

 if (ACPI_FAILURE(status) || retval)
  return -EIO;

 return 0;
}
