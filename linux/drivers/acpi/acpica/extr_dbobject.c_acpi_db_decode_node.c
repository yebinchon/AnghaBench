
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int flags; int type; } ;




 int ANOBJ_METHOD_ARG ;
 int ANOBJ_METHOD_LOCAL ;
 int acpi_db_decode_internal_object (int ) ;
 int acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 int acpi_os_printf (char*,...) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;

__attribute__((used)) static void acpi_db_decode_node(struct acpi_namespace_node *node)
{

 acpi_os_printf("<Node>          Name %4.4s",
         acpi_ut_get_node_name(node));

 if (node->flags & ANOBJ_METHOD_ARG) {
  acpi_os_printf(" [Method Arg]");
 }
 if (node->flags & ANOBJ_METHOD_LOCAL) {
  acpi_os_printf(" [Method Local]");
 }

 switch (node->type) {



 case 129:

  acpi_os_printf(" Device");
  break;

 case 128:

  acpi_os_printf(" Thermal Zone");
  break;

 default:

  acpi_db_decode_internal_object(acpi_ns_get_attached_object
            (node));
  break;
 }
}
