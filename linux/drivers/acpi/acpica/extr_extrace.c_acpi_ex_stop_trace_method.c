
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * aml_start; } ;
union acpi_operand_object {TYPE_1__ method; } ;
typedef scalar_t__ u8 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;


 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_TRACE_AML_METHOD ;
 int ACPI_TRACE_ONESHOT ;
 int ACPI_TRACE_POINT (int ,int ,int *,char*) ;
 int FALSE ;
 int TRUE ;
 int acpi_dbg_layer ;
 int acpi_dbg_level ;
 scalar_t__ acpi_ex_interpreter_trace_enabled (int *) ;
 int acpi_gbl_original_dbg_layer ;
 int acpi_gbl_original_dbg_level ;
 int acpi_gbl_trace_flags ;
 int * acpi_gbl_trace_method_name ;
 union acpi_operand_object* acpi_gbl_trace_method_object ;
 char* acpi_ns_get_normalized_pathname (struct acpi_namespace_node*,int ) ;
 int ex_stop_trace_method ;

void
acpi_ex_stop_trace_method(struct acpi_namespace_node *method_node,
     union acpi_operand_object *obj_desc,
     struct acpi_walk_state *walk_state)
{
 char *pathname = ((void*)0);
 u8 enabled;

 ACPI_FUNCTION_NAME(ex_stop_trace_method);

 if (method_node) {
  pathname = acpi_ns_get_normalized_pathname(method_node, TRUE);
 }

 enabled = acpi_ex_interpreter_trace_enabled(((void*)0));

 if (enabled) {
  ACPI_TRACE_POINT(ACPI_TRACE_AML_METHOD, FALSE,
     obj_desc ? obj_desc->method.aml_start : ((void*)0),
     pathname);
 }



 if (acpi_gbl_trace_method_object == obj_desc) {



  if (acpi_gbl_trace_flags & ACPI_TRACE_ONESHOT) {
   acpi_gbl_trace_method_name = ((void*)0);
  }

  acpi_dbg_level = acpi_gbl_original_dbg_level;
  acpi_dbg_layer = acpi_gbl_original_dbg_layer;
  acpi_gbl_trace_method_object = ((void*)0);
 }

 if (pathname) {
  ACPI_FREE(pathname);
 }
}
