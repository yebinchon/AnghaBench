
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_AML_CONSTANT ;
 int acpi_ut_get_type_name (scalar_t__) ;

__attribute__((used)) static acpi_status
acpi_ex_check_object_type(acpi_object_type type_needed,
     acpi_object_type this_type, void *object)
{
 ACPI_FUNCTION_ENTRY();

 if (type_needed == ACPI_TYPE_ANY) {



  return (AE_OK);
 }

 if (type_needed == ACPI_TYPE_LOCAL_REFERENCE) {





  if ((this_type == ACPI_TYPE_INTEGER) &&
      (((union acpi_operand_object *)object)->common.flags &
       AOPOBJ_AML_CONSTANT)) {
   return (AE_OK);
  }
 }

 if (type_needed != this_type) {
  ACPI_ERROR((AE_INFO,
       "Needed type [%s], found [%s] %p",
       acpi_ut_get_type_name(type_needed),
       acpi_ut_get_type_name(this_type), object));

  return (AE_AML_OPERAND_TYPE);
 }

 return (AE_OK);
}
