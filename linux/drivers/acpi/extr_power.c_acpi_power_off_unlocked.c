
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_power_resource {scalar_t__ ref_count; int name; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int __acpi_power_off (struct acpi_power_resource*) ;

__attribute__((used)) static int acpi_power_off_unlocked(struct acpi_power_resource *resource)
{
 int result = 0;

 if (!resource->ref_count) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Power resource [%s] already off\n",
      resource->name));
  return 0;
 }

 if (--resource->ref_count) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Power resource [%s] still in use\n",
      resource->name));
 } else {
  result = __acpi_power_off(resource);
  if (result)
   resource->ref_count++;
 }
 return result;
}
