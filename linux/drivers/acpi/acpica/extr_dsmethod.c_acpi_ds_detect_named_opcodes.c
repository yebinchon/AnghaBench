
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union acpi_parse_object {int dummy; } acpi_parse_object ;
struct acpi_walk_state {int opcode; TYPE_3__* op_info; TYPE_2__* method_node; TYPE_4__* method_desc; } ;
typedef int acpi_status ;
struct TYPE_10__ {int info_flags; scalar_t__ sync_level; } ;
struct TYPE_9__ {TYPE_5__ method; } ;
struct TYPE_8__ {int flags; int name; } ;
struct TYPE_6__ {int ascii; } ;
struct TYPE_7__ {TYPE_1__ name; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int (*) (struct acpi_walk_state*,union acpi_parse_object**)) ;
 int ACPI_METHOD_IGNORE_SYNC_LEVEL ;
 int ACPI_METHOD_SERIALIZED ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int AML_CREATE ;
 int AML_FIELD ;
 int AML_NAMED ;

__attribute__((used)) static acpi_status
acpi_ds_detect_named_opcodes(struct acpi_walk_state *walk_state,
        union acpi_parse_object **out_op)
{

 ACPI_FUNCTION_NAME(acpi_ds_detect_named_opcodes);



 if (!
     (walk_state->op_info->
      flags & (AML_NAMED | AML_CREATE | AML_FIELD))) {
  return (AE_OK);
 }
 walk_state->method_desc->method.sync_level = 0;
 walk_state->method_desc->method.info_flags |=
     (ACPI_METHOD_SERIALIZED | ACPI_METHOD_IGNORE_SYNC_LEVEL);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "Method serialized [%4.4s] %p - [%s] (%4.4X)\n",
     walk_state->method_node->name.ascii,
     walk_state->method_node, walk_state->op_info->name,
     walk_state->opcode));



 return (AE_CTRL_TERMINATE);
}
