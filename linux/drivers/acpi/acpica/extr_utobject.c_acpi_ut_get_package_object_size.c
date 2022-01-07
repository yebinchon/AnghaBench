
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef union acpi_object {int dummy; } acpi_object ;
struct acpi_pkg_info {int length; int num_packages; scalar_t__ object_space; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_ROUND_UP_TO_NATIVE_WORD (int) ;
 int acpi_ut_get_element_length ;
 int acpi_ut_walk_package_tree (union acpi_operand_object*,int *,int ,struct acpi_pkg_info*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_get_package_object_size ;

__attribute__((used)) static acpi_status
acpi_ut_get_package_object_size(union acpi_operand_object *internal_object,
    acpi_size *obj_length)
{
 acpi_status status;
 struct acpi_pkg_info info;

 ACPI_FUNCTION_TRACE_PTR(ut_get_package_object_size, internal_object);

 info.length = 0;
 info.object_space = 0;
 info.num_packages = 1;

 status =
     acpi_ut_walk_package_tree(internal_object, ((void*)0),
          acpi_ut_get_element_length, &info);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }






 info.length +=
     ACPI_ROUND_UP_TO_NATIVE_WORD(sizeof(union acpi_object)) *
     (acpi_size)info.num_packages;



 *obj_length = info.length;
 return_ACPI_STATUS(status);
}
