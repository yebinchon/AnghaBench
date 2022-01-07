
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;


 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int FALSE ;
 char* acpi_ns_get_normalized_pathname (struct acpi_namespace_node*,int ) ;
 int ns_get_external_pathname ;
 int return_PTR (char*) ;

char *acpi_ns_get_external_pathname(struct acpi_namespace_node *node)
{
 char *name_buffer;

 ACPI_FUNCTION_TRACE_PTR(ns_get_external_pathname, node);

 name_buffer = acpi_ns_get_normalized_pathname(node, FALSE);
 return_PTR(name_buffer);
}
