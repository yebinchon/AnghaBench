
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {union acpi_parse_object* parent; union acpi_parse_object* next; } ;
union acpi_parse_object {TYPE_1__ common; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int ASL_CV_LABEL_FILENODE (union acpi_parse_object*) ;
 union acpi_parse_object* acpi_ps_get_arg (union acpi_parse_object*,int ) ;

union acpi_parse_object *acpi_ps_get_depth_next(union acpi_parse_object *origin,
      union acpi_parse_object *op)
{
 union acpi_parse_object *next = ((void*)0);
 union acpi_parse_object *parent;
 union acpi_parse_object *arg;

 ACPI_FUNCTION_ENTRY();

 if (!op) {
  return (((void*)0));
 }



 next = acpi_ps_get_arg(op, 0);
 if (next) {
  ASL_CV_LABEL_FILENODE(next);
  return (next);
 }



 next = op->common.next;
 if (next) {
  ASL_CV_LABEL_FILENODE(next);
  return (next);
 }



 parent = op->common.parent;

 while (parent) {
  arg = acpi_ps_get_arg(parent, 0);
  while (arg && (arg != origin) && (arg != op)) {

   ASL_CV_LABEL_FILENODE(arg);
   arg = arg->common.next;
  }

  if (arg == origin) {



   return (((void*)0));
  }

  if (parent->common.next) {



   ASL_CV_LABEL_FILENODE(parent->common.next);
   return (parent->common.next);
  }

  op = parent;
  parent = parent->common.parent;
 }

 ASL_CV_LABEL_FILENODE(next);
 return (next);
}
