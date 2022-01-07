
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {struct acpi_namespace_node* child; struct acpi_namespace_node* peer; } ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,struct acpi_namespace_node*) ;
 int AE_INFO ;
 int acpi_ns_delete_node (struct acpi_namespace_node*) ;
 int ns_delete_children ;
 int return_VOID ;

void acpi_ns_delete_children(struct acpi_namespace_node *parent_node)
{
 struct acpi_namespace_node *next_node;
 struct acpi_namespace_node *node_to_delete;

 ACPI_FUNCTION_TRACE_PTR(ns_delete_children, parent_node);

 if (!parent_node) {
  return_VOID;
 }



 next_node = parent_node->child;
 while (next_node) {



  if (next_node->child) {
   ACPI_ERROR((AE_INFO, "Found a grandchild! P=%p C=%p",
        parent_node, next_node));
  }





  node_to_delete = next_node;
  next_node = next_node->peer;
  acpi_ns_delete_node(node_to_delete);
 };



 parent_node->child = ((void*)0);
 return_VOID;
}
