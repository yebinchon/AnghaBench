
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_repair_info {int name; scalar_t__ repair_function; } ;
struct TYPE_2__ {int ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 struct acpi_repair_info* acpi_ns_repairable_names ;

__attribute__((used)) static const struct acpi_repair_info *acpi_ns_match_complex_repair(struct
           acpi_namespace_node
           *node)
{
 const struct acpi_repair_info *this_name;



 this_name = acpi_ns_repairable_names;
 while (this_name->repair_function) {
  if (ACPI_COMPARE_NAMESEG(node->name.ascii, this_name->name)) {
   return (this_name);
  }

  this_name++;
 }

 return (((void*)0));
}
