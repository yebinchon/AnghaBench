
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reference_count; scalar_t__ type; union acpi_operand_object* next_object; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int acpi_object_type ;


 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;


 scalar_t__ ACPI_TYPE_LOCAL_EXTRA ;

 union acpi_operand_object* acpi_ut_allocate_object_desc_dbg (char const*,int ,int ) ;
 int acpi_ut_delete_object_desc (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int) ;
 int kmemleak_not_leak (union acpi_operand_object*) ;
 int return_PTR (union acpi_operand_object*) ;
 int ut_create_internal_object_dbg ;

union acpi_operand_object *acpi_ut_create_internal_object_dbg(const char
             *module_name,
             u32 line_number,
             u32 component_id,
             acpi_object_type
             type)
{
 union acpi_operand_object *object;
 union acpi_operand_object *second_object;

 ACPI_FUNCTION_TRACE_STR(ut_create_internal_object_dbg,
    acpi_ut_get_type_name(type));



 object =
     acpi_ut_allocate_object_desc_dbg(module_name, line_number,
          component_id);
 if (!object) {
  return_PTR(((void*)0));
 }
 kmemleak_not_leak(object);

 switch (type) {
 case 128:
 case 130:
 case 129:



  second_object =
      acpi_ut_allocate_object_desc_dbg(module_name, line_number,
           component_id);
  if (!second_object) {
   acpi_ut_delete_object_desc(object);
   return_PTR(((void*)0));
  }

  second_object->common.type = ACPI_TYPE_LOCAL_EXTRA;
  second_object->common.reference_count = 1;



  object->common.next_object = second_object;
  break;

 default:


  break;
 }



 object->common.type = (u8) type;



 object->common.reference_count = 1;



 return_PTR(object);
}
