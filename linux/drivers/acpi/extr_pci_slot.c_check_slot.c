
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {scalar_t__ pointer; int * member_1; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FULL_PATHNAME ;
 unsigned long long ACPI_STA_DEVICE_PRESENT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 scalar_t__ check_sta_before_sun ;
 int kfree (scalar_t__) ;
 int pr_debug (char*,char*,...) ;

__attribute__((used)) static int
check_slot(acpi_handle handle, unsigned long long *sun)
{
 int device = -1;
 unsigned long long adr, sta;
 acpi_status status;
 struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, ((void*)0) };

 acpi_get_name(handle, ACPI_FULL_PATHNAME, &buffer);
 pr_debug("Checking slot on path: %s\n", (char *)buffer.pointer);

 if (check_sta_before_sun) {

  status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &sta);
  if (ACPI_SUCCESS(status) && !(sta & ACPI_STA_DEVICE_PRESENT))
   goto out;
 }

 status = acpi_evaluate_integer(handle, "_ADR", ((void*)0), &adr);
 if (ACPI_FAILURE(status)) {
  pr_debug("_ADR returned %d on %s\n",
    status, (char *)buffer.pointer);
  goto out;
 }


 status = acpi_evaluate_integer(handle, "_SUN", ((void*)0), sun);
 if (ACPI_FAILURE(status)) {
  pr_debug("_SUN returned %d on %s\n",
    status, (char *)buffer.pointer);
  goto out;
 }

 device = (adr >> 16) & 0xffff;
out:
 kfree(buffer.pointer);
 return device;
}
