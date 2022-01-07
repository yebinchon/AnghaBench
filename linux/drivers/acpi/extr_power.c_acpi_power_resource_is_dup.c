
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
typedef scalar_t__ acpi_handle ;
struct TYPE_4__ {scalar_t__ handle; } ;
struct TYPE_5__ {TYPE_1__ reference; } ;



__attribute__((used)) static bool acpi_power_resource_is_dup(union acpi_object *package,
           unsigned int start, unsigned int i)
{
 acpi_handle rhandle, dup;
 unsigned int j;


 rhandle = package->package.elements[i].reference.handle;
 for (j = start; j < i; j++) {
  dup = package->package.elements[j].reference.handle;
  if (dup == rhandle)
   return 1;
 }

 return 0;
}
