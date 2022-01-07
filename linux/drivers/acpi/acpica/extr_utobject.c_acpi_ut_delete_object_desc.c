
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int AE_INFO ;
 int acpi_gbl_operand_cache ;
 int acpi_os_release_object (int ,union acpi_operand_object*) ;
 int acpi_ut_get_descriptor_name (union acpi_operand_object*) ;
 int return_VOID ;
 int ut_delete_object_desc ;

void acpi_ut_delete_object_desc(union acpi_operand_object *object)
{
 ACPI_FUNCTION_TRACE_PTR(ut_delete_object_desc, object);



 if (ACPI_GET_DESCRIPTOR_TYPE(object) != ACPI_DESC_TYPE_OPERAND) {
  ACPI_ERROR((AE_INFO,
       "%p is not an ACPI Operand object [%s]", object,
       acpi_ut_get_descriptor_name(object)));
  return_VOID;
 }

 (void)acpi_os_release_object(acpi_gbl_operand_cache, object);
 return_VOID;
}
