
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {size_t value; int class; union acpi_operand_object* node; union acpi_operand_object* object; union acpi_operand_object** where; int target_type; } ;
struct TYPE_5__ {int type; } ;
union acpi_operand_object {TYPE_4__ reference; TYPE_1__ common; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_walk_state {TYPE_3__* arguments; TYPE_2__* local_variables; } ;
struct acpi_namespace_node {TYPE_4__ reference; TYPE_1__ common; } ;
struct TYPE_7__ {union acpi_operand_object* object; } ;
struct TYPE_6__ {union acpi_operand_object* object; } ;





 int ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int ACPI_TYPE_LOCAL_MAX ;


 int acpi_db_decode_internal_object (union acpi_operand_object*) ;
 int acpi_db_decode_node (union acpi_operand_object*) ;
 int acpi_os_printf (char*,...) ;
 int acpi_ut_get_descriptor_name (union acpi_operand_object*) ;
 int acpi_ut_get_reference_name (union acpi_operand_object*) ;

void
acpi_db_display_internal_object(union acpi_operand_object *obj_desc,
    struct acpi_walk_state *walk_state)
{
 u8 type;

 acpi_os_printf("%p ", obj_desc);

 if (!obj_desc) {
  acpi_os_printf("<Null Object>\n");
  return;
 }



 switch (ACPI_GET_DESCRIPTOR_TYPE(obj_desc)) {
 case 138:

  acpi_os_printf("<Parser> ");
  break;

 case 140:

  acpi_db_decode_node((struct acpi_namespace_node *)obj_desc);
  break;

 case 139:

  type = obj_desc->common.type;
  if (type > ACPI_TYPE_LOCAL_MAX) {
   acpi_os_printf(" Type %X [Invalid Type]", (u32)type);
   return;
  }



  switch (obj_desc->common.type) {
  case 129:

   acpi_os_printf("[%s] ",
           acpi_ut_get_reference_name(obj_desc));



   switch (obj_desc->reference.class) {
   case 134:

    acpi_os_printf("%X ",
            obj_desc->reference.value);
    if (walk_state) {
     obj_desc = walk_state->local_variables
         [obj_desc->reference.value].object;
     acpi_os_printf("%p", obj_desc);
     acpi_db_decode_internal_object
         (obj_desc);
    }
    break;

   case 137:

    acpi_os_printf("%X ",
            obj_desc->reference.value);
    if (walk_state) {
     obj_desc = walk_state->arguments
         [obj_desc->reference.value].object;
     acpi_os_printf("%p", obj_desc);
     acpi_db_decode_internal_object
         (obj_desc);
    }
    break;

   case 135:

    switch (obj_desc->reference.target_type) {
    case 130:

     acpi_os_printf("%p",
             obj_desc->reference.
             object);
     acpi_db_decode_internal_object
         (obj_desc->reference.object);
     break;

    case 128:

     acpi_os_printf("%p",
             obj_desc->reference.
             where);
     if (!obj_desc->reference.where) {
      acpi_os_printf
          (" Uninitialized WHERE pointer");
     } else {
      acpi_db_decode_internal_object(*
                (obj_desc->
          reference.
          where));
     }
     break;

    default:

     acpi_os_printf
         ("Unknown index target type");
     break;
    }
    break;

   case 132:

    if (!obj_desc->reference.object) {
     acpi_os_printf
         ("Uninitialized reference subobject pointer");
     break;
    }



    switch (ACPI_GET_DESCRIPTOR_TYPE
     (obj_desc->reference.object)) {
    case 140:

     acpi_db_decode_node(obj_desc->reference.
           object);
     break;

    case 139:

     acpi_db_decode_internal_object
         (obj_desc->reference.object);
     break;

    default:
     break;
    }
    break;

   case 133:

    acpi_db_decode_node(obj_desc->reference.node);
    break;

   case 136:
   case 131:

    acpi_os_printf("\n");
    break;

   default:

    acpi_os_printf("%2.2X\n",
            obj_desc->reference.class);
    break;
   }
   break;

  default:

   acpi_os_printf("<Obj>          ");
   acpi_db_decode_internal_object(obj_desc);
   break;
  }
  break;

 default:

  acpi_os_printf("<Not a valid ACPI Object Descriptor> [%s]",
          acpi_ut_get_descriptor_name(obj_desc));
  break;
 }

 acpi_os_printf("\n");
}
