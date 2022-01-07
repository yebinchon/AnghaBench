
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_size ;


 void* ACPI_TO_POINTER (int ) ;
 int strtoul (void*,int *,int) ;

__attribute__((used)) static void *acpi_db_get_pointer(void *target)
{
 void *obj_ptr;
 acpi_size address;

 address = strtoul(target, ((void*)0), 16);
 obj_ptr = ACPI_TO_POINTER(address);
 return (obj_ptr);
}
