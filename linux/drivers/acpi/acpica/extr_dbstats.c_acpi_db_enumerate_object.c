
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {union acpi_operand_object* handler; union acpi_operand_object** notify_list; } ;
struct TYPE_13__ {union acpi_operand_object* handler; union acpi_operand_object** notify_list; } ;
struct TYPE_12__ {union acpi_operand_object** notify_list; } ;
struct TYPE_11__ {union acpi_operand_object* handler; } ;
struct TYPE_10__ {union acpi_operand_object* handler; union acpi_operand_object** notify_list; } ;
struct TYPE_9__ {size_t count; union acpi_operand_object** elements; } ;
struct TYPE_8__ {size_t type; } ;
union acpi_operand_object {TYPE_7__ thermal_zone; TYPE_6__ processor; TYPE_5__ power_resource; TYPE_4__ region; TYPE_3__ device; TYPE_2__ package; TYPE_1__ common; } ;
typedef size_t u32 ;




 size_t ACPI_TYPE_LOCAL_REGION_FIELD ;
 size_t ACPI_TYPE_NS_NODE_MAX ;





 int acpi_gbl_num_objects ;
 int * acpi_gbl_obj_type_count ;
 int acpi_gbl_obj_type_count_misc ;
 int acpi_ns_get_secondary_object (union acpi_operand_object*) ;

__attribute__((used)) static void acpi_db_enumerate_object(union acpi_operand_object *obj_desc)
{
 u32 i;

 if (!obj_desc) {
  return;
 }



 acpi_gbl_num_objects++;

 if (obj_desc->common.type > ACPI_TYPE_NS_NODE_MAX) {
  acpi_gbl_obj_type_count_misc++;
 } else {
  acpi_gbl_obj_type_count[obj_desc->common.type]++;
 }



 switch (obj_desc->common.type) {
 case 132:

  for (i = 0; i < obj_desc->package.count; i++) {
   acpi_db_enumerate_object(obj_desc->package.elements[i]);
  }
  break;

 case 133:

  acpi_db_enumerate_object(obj_desc->device.notify_list[0]);
  acpi_db_enumerate_object(obj_desc->device.notify_list[1]);
  acpi_db_enumerate_object(obj_desc->device.handler);
  break;

 case 134:

  if (acpi_ns_get_secondary_object(obj_desc)) {
   acpi_gbl_obj_type_count[134]++;
  }
  break;

 case 129:

  acpi_gbl_obj_type_count[ACPI_TYPE_LOCAL_REGION_FIELD]++;
  acpi_db_enumerate_object(obj_desc->region.handler);
  break;

 case 131:

  acpi_db_enumerate_object(obj_desc->power_resource.
      notify_list[0]);
  acpi_db_enumerate_object(obj_desc->power_resource.
      notify_list[1]);
  break;

 case 130:

  acpi_db_enumerate_object(obj_desc->processor.notify_list[0]);
  acpi_db_enumerate_object(obj_desc->processor.notify_list[1]);
  acpi_db_enumerate_object(obj_desc->processor.handler);
  break;

 case 128:

  acpi_db_enumerate_object(obj_desc->thermal_zone.notify_list[0]);
  acpi_db_enumerate_object(obj_desc->thermal_zone.notify_list[1]);
  acpi_db_enumerate_object(obj_desc->thermal_zone.handler);
  break;

 default:

  break;
 }
}
