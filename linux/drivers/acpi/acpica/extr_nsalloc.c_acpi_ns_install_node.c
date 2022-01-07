
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct acpi_walk_state {TYPE_2__* method_desc; struct acpi_namespace_node* method_node; int owner_id; } ;
struct acpi_namespace_node {scalar_t__ type; int owner_id; struct acpi_namespace_node* peer; struct acpi_namespace_node* child; struct acpi_namespace_node* parent; } ;
typedef int acpi_owner_id ;
typedef scalar_t__ acpi_object_type ;
struct TYPE_3__ {int info_flags; } ;
struct TYPE_4__ {TYPE_1__ method; } ;


 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_METHOD_MODIFIED_NAMESPACE ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int acpi_ut_get_type_name (scalar_t__) ;
 int ns_install_node ;
 int return_VOID ;

void acpi_ns_install_node(struct acpi_walk_state *walk_state, struct acpi_namespace_node *parent_node,
     struct acpi_namespace_node *node,
     acpi_object_type type)
{
 acpi_owner_id owner_id = 0;
 struct acpi_namespace_node *child_node;

 ACPI_FUNCTION_TRACE(ns_install_node);

 if (walk_state) {




  owner_id = walk_state->owner_id;

  if ((walk_state->method_desc) &&
      (parent_node != walk_state->method_node)) {






   walk_state->method_desc->method.info_flags |=
       ACPI_METHOD_MODIFIED_NAMESPACE;
  }
 }



 node->peer = ((void*)0);
 node->parent = parent_node;
 child_node = parent_node->child;

 if (!child_node) {
  parent_node->child = node;
 } else {


  while (child_node->peer) {
   child_node = child_node->peer;
  }

  child_node->peer = node;
 }



 node->owner_id = owner_id;
 node->type = (u8) type;

 ACPI_DEBUG_PRINT((ACPI_DB_NAMES,
     "%4.4s (%s) [Node %p Owner %3.3X] added to %4.4s (%s) [Node %p]\n",
     acpi_ut_get_node_name(node),
     acpi_ut_get_type_name(node->type), node, owner_id,
     acpi_ut_get_node_name(parent_node),
     acpi_ut_get_type_name(parent_node->type),
     parent_node));

 return_VOID;
}
