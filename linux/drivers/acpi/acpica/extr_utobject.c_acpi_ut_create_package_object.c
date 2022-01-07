
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_operand_object** elements; scalar_t__ count; } ;
union acpi_operand_object {TYPE_1__ package; } ;
typedef scalar_t__ u32 ;
typedef int acpi_size ;


 union acpi_operand_object** ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (union acpi_operand_object*) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_TYPE_PACKAGE ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int return_PTR (union acpi_operand_object*) ;
 int ut_create_package_object ;

union acpi_operand_object *acpi_ut_create_package_object(u32 count)
{
 union acpi_operand_object *package_desc;
 union acpi_operand_object **package_elements;

 ACPI_FUNCTION_TRACE_U32(ut_create_package_object, count);



 package_desc = acpi_ut_create_internal_object(ACPI_TYPE_PACKAGE);
 if (!package_desc) {
  return_PTR(((void*)0));
 }





 package_elements = ACPI_ALLOCATE_ZEROED(((acpi_size)count +
       1) * sizeof(void *));
 if (!package_elements) {
  ACPI_FREE(package_desc);
  return_PTR(((void*)0));
 }

 package_desc->package.count = count;
 package_desc->package.elements = package_elements;
 return_PTR(package_desc);
}
