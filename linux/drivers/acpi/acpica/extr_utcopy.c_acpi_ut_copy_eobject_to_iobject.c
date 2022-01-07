
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
union acpi_object {scalar_t__ type; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int acpi_ut_copy_epackage_to_ipackage (union acpi_object*,union acpi_operand_object**) ;
 int acpi_ut_copy_esimple_to_isimple (union acpi_object*,union acpi_operand_object**) ;
 int return_ACPI_STATUS (int ) ;
 int ut_copy_eobject_to_iobject ;

acpi_status
acpi_ut_copy_eobject_to_iobject(union acpi_object *external_object,
    union acpi_operand_object **internal_object)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ut_copy_eobject_to_iobject);

 if (external_object->type == ACPI_TYPE_PACKAGE) {
  status =
      acpi_ut_copy_epackage_to_ipackage(external_object,
            internal_object);
 } else {



  status = acpi_ut_copy_esimple_to_isimple(external_object,
        internal_object);
 }

 return_ACPI_STATUS(status);
}
