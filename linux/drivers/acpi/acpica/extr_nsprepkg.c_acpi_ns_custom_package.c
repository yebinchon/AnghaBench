
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_2__ integer; TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_evaluate_info {int full_pathname; int node_flags; } ;
typedef int acpi_status ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_STRING ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_ns_check_package_elements (struct acpi_evaluate_info*,union acpi_operand_object**,int ,int,int ,int,int) ;
 int ns_custom_package ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ns_custom_package(struct acpi_evaluate_info *info,
         union acpi_operand_object **elements, u32 count)
{
 u32 expected_count;
 u32 version;
 acpi_status status = AE_OK;

 ACPI_FUNCTION_NAME(ns_custom_package);



 if ((*elements)->common.type != ACPI_TYPE_INTEGER) {
  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Return Package has invalid object type for version number"));
  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }

 version = (u32)(*elements)->integer.value;
 expected_count = 21;

 if (version == 0) {
  expected_count = 20;
 }

 if (count < expected_count) {
  ACPI_WARN_PREDEFINED((AE_INFO, info->full_pathname,
          info->node_flags,
          "Return Package is too small - found %u elements, expected %u",
          count, expected_count));
  return_ACPI_STATUS(AE_AML_OPERAND_VALUE);
 } else if (count > expected_count) {
  ACPI_DEBUG_PRINT((ACPI_DB_REPAIR,
      "%s: Return Package is larger than needed - "
      "found %u, expected %u\n",
      info->full_pathname, count, expected_count));
 }



 status = acpi_ns_check_package_elements(info, elements,
      ACPI_RTYPE_INTEGER, 16,
      ACPI_RTYPE_STRING, 4, 0);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 if (version > 0) {
  status = acpi_ns_check_package_elements(info, elements + 20,
       ACPI_RTYPE_INTEGER, 1,
       0, 0, 20);
 }

 return_ACPI_STATUS(status);
}
