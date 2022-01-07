
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_size ;


 int ACPI_FUNCTION_ENTRY () ;
 void* acpi_os_allocate (int ) ;
 int memset (void*,int ,int ) ;

void *acpi_os_allocate_zeroed(acpi_size size)
{
 void *allocation;

 ACPI_FUNCTION_ENTRY();

 allocation = acpi_os_allocate(size);
 if (allocation) {



  memset(allocation, 0, size);
 }

 return (allocation);
}
