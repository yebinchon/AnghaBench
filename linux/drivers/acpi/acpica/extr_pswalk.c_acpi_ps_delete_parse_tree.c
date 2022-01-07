
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int string; } ;
struct TYPE_6__ {union acpi_parse_object* parent; union acpi_parse_object* next; TYPE_2__ value; int aml_opcode; } ;
struct TYPE_4__ {scalar_t__ aml_opcode; } ;
union acpi_parse_object {TYPE_3__ common; TYPE_1__ named; } ;
typedef int u32 ;


 int ACPI_DB_PARSE_TREES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_parse_object*) ;
 scalar_t__ ACPI_IS_DEBUG_ENABLED (int ,int ) ;
 int ACPI_LV_PARSE_TREES ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_STRING_OP ;
 int _COMPONENT ;
 int acpi_os_printf (char*,...) ;
 int acpi_ps_free_op (union acpi_parse_object*) ;
 union acpi_parse_object* acpi_ps_get_arg (union acpi_parse_object*,int ) ;
 int acpi_ps_get_opcode_name (int ) ;
 int ps_delete_parse_tree ;
 int return_VOID ;

void acpi_ps_delete_parse_tree(union acpi_parse_object *subtree_root)
{
 union acpi_parse_object *op = subtree_root;
 union acpi_parse_object *next = ((void*)0);
 union acpi_parse_object *parent = ((void*)0);
 u32 level = 0;

 ACPI_FUNCTION_TRACE_PTR(ps_delete_parse_tree, subtree_root);

 ACPI_DEBUG_PRINT((ACPI_DB_PARSE_TREES, " root %p\n", subtree_root));



 while (op) {
  if (op != parent) {



   if (ACPI_IS_DEBUG_ENABLED
       (ACPI_LV_PARSE_TREES, _COMPONENT)) {



    acpi_os_printf("      %*.s%s %p", (level * 4),
            " ",
            acpi_ps_get_opcode_name(op->
               common.
               aml_opcode),
            op);

    if (op->named.aml_opcode == AML_INT_NAMEPATH_OP) {
     acpi_os_printf("  %4.4s",
             op->common.value.string);
    }
    if (op->named.aml_opcode == AML_STRING_OP) {
     acpi_os_printf("  %s",
             op->common.value.string);
    }
    acpi_os_printf("\n");
   }



   next = acpi_ps_get_arg(op, 0);
   if (next) {



    op = next;
    level++;
    continue;
   }
  }



  next = op->common.next;
  parent = op->common.parent;

  acpi_ps_free_op(op);



  if (op == subtree_root) {
   return_VOID;
  }

  if (next) {
   op = next;
  } else {
   level--;
   op = parent;
  }
 }

 return_VOID;
}
