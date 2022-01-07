
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_1__ package; } ;
struct acpi_evaluate_info {int return_flags; int full_pathname; } ;
typedef int acpi_status ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_OBJECT_WRAPPED ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_package_object (int) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int ns_wrap_with_package ;

acpi_status
acpi_ns_wrap_with_package(struct acpi_evaluate_info *info,
     union acpi_operand_object *original_object,
     union acpi_operand_object **obj_desc_ptr)
{
 union acpi_operand_object *pkg_obj_desc;

 ACPI_FUNCTION_NAME(ns_wrap_with_package);





 pkg_obj_desc = acpi_ut_create_package_object(1);
 if (!pkg_obj_desc) {
  return (AE_NO_MEMORY);
 }

 pkg_obj_desc->package.elements[0] = original_object;

 ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
     "%s: Wrapped %s with expected Package object\n",
     info->full_pathname,
     acpi_ut_get_object_type_name(original_object)));



 *obj_desc_ptr = pkg_obj_desc;
 info->return_flags |= ACPI_OBJECT_REPAIRED | ACPI_OBJECT_WRAPPED;
 return (AE_OK);
}
