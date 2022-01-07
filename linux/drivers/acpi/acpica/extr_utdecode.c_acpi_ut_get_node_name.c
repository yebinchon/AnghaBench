
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (struct acpi_namespace_node*) ;
 void* ACPI_ROOT_OBJECT ;
 void* acpi_gbl_root_node ;
 int acpi_ut_repair_name (char const*) ;

const char *acpi_ut_get_node_name(void *object)
{
 struct acpi_namespace_node *node = (struct acpi_namespace_node *)object;



 if (!object) {
  return ("NULL");
 }



 if ((object == ACPI_ROOT_OBJECT) || (object == acpi_gbl_root_node)) {
  return ("\"\\\" ");
 }



 if (ACPI_GET_DESCRIPTOR_TYPE(node) != ACPI_DESC_TYPE_NAMED) {
  return ("####");
 }





 acpi_ut_repair_name(node->name.ascii);



 return (node->name.ascii);
}
