
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int reference_count; } ;
struct TYPE_3__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ package; } ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct acpi_evaluate_info {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AE_OK ;
 int acpi_ns_repair_HID (struct acpi_evaluate_info*,union acpi_operand_object**) ;

__attribute__((used)) static acpi_status
acpi_ns_repair_CID(struct acpi_evaluate_info *info,
     union acpi_operand_object **return_object_ptr)
{
 acpi_status status;
 union acpi_operand_object *return_object = *return_object_ptr;
 union acpi_operand_object **element_ptr;
 union acpi_operand_object *original_element;
 u16 original_ref_count;
 u32 i;



 if (return_object->common.type == ACPI_TYPE_STRING) {
  status = acpi_ns_repair_HID(info, return_object_ptr);
  return (status);
 }



 if (return_object->common.type != ACPI_TYPE_PACKAGE) {
  return (AE_OK);
 }



 element_ptr = return_object->package.elements;
 for (i = 0; i < return_object->package.count; i++) {
  original_element = *element_ptr;
  original_ref_count = original_element->common.reference_count;

  status = acpi_ns_repair_HID(info, element_ptr);
  if (ACPI_FAILURE(status)) {
   return (status);
  }

  if (original_element != *element_ptr) {



   (*element_ptr)->common.reference_count =
       original_ref_count;
  }

  element_ptr++;
 }

 return (AE_OK);
}
