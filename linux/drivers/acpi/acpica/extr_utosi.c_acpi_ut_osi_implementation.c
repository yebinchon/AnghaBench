
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ value; } ;
struct TYPE_7__ {int pointer; } ;
struct TYPE_6__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_4__ integer; TYPE_3__ string; TYPE_2__ common; } ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct acpi_walk_state {union acpi_operand_object* return_desc; TYPE_1__* arguments; } ;
struct acpi_interface_info {int flags; scalar_t__ value; } ;
typedef int acpi_status ;
typedef scalar_t__ (* acpi_interface_handler ) (int ,int ) ;
struct TYPE_5__ {union acpi_operand_object* object; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_OSI_INVALID ;
 int ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_STRING ;
 scalar_t__ ACPI_UINT64_MAX ;
 int ACPI_WAIT_FOREVER ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 scalar_t__ acpi_gbl_interface_handler (int ,int ) ;
 scalar_t__ acpi_gbl_osi_data ;
 int acpi_gbl_osi_mutex ;
 int acpi_os_acquire_mutex (int ,int ) ;
 int acpi_os_release_mutex (int ) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 struct acpi_interface_info* acpi_ut_get_interface (int ) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_osi_implementation ;

acpi_status acpi_ut_osi_implementation(struct acpi_walk_state *walk_state)
{
 union acpi_operand_object *string_desc;
 union acpi_operand_object *return_desc;
 struct acpi_interface_info *interface_info;
 acpi_interface_handler interface_handler;
 acpi_status status;
 u64 return_value;

 ACPI_FUNCTION_TRACE(ut_osi_implementation);



 string_desc = walk_state->arguments[0].object;
 if (!string_desc || (string_desc->common.type != ACPI_TYPE_STRING)) {
  return_ACPI_STATUS(AE_TYPE);
 }



 return_desc = acpi_ut_create_internal_object(ACPI_TYPE_INTEGER);
 if (!return_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }



 return_value = 0;
 status = acpi_os_acquire_mutex(acpi_gbl_osi_mutex, ACPI_WAIT_FOREVER);
 if (ACPI_FAILURE(status)) {
  acpi_ut_remove_reference(return_desc);
  return_ACPI_STATUS(status);
 }



 interface_info = acpi_ut_get_interface(string_desc->string.pointer);
 if (interface_info && !(interface_info->flags & ACPI_OSI_INVALID)) {





  if (interface_info->value > acpi_gbl_osi_data) {
   acpi_gbl_osi_data = interface_info->value;
  }

  return_value = ACPI_UINT64_MAX;
 }

 acpi_os_release_mutex(acpi_gbl_osi_mutex);






 interface_handler = acpi_gbl_interface_handler;
 if (interface_handler) {
  if (interface_handler
      (string_desc->string.pointer, (u32)return_value)) {
   return_value = ACPI_UINT64_MAX;
  }
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INFO,
         "ACPI: BIOS _OSI(\"%s\") is %ssupported\n",
         string_desc->string.pointer,
         return_value == 0 ? "not " : ""));



 return_desc->integer.value = return_value;
 walk_state->return_desc = return_desc;
 return_ACPI_STATUS(AE_OK);
}
