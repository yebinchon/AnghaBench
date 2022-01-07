
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct acpi_simple_repair_info {scalar_t__ unexpected_btypes; scalar_t__ package_index; int name; scalar_t__ object_converter; } ;
struct TYPE_2__ {int ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;


 scalar_t__ ACPI_ALL_PACKAGE_ELEMENTS ;
 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 struct acpi_simple_repair_info* acpi_object_repair_info ;

__attribute__((used)) static const struct acpi_simple_repair_info *acpi_ns_match_simple_repair(struct
          acpi_namespace_node
          *node,
          u32
          return_btype,
          u32
          package_index)
{
 const struct acpi_simple_repair_info *this_name;



 this_name = acpi_object_repair_info;
 while (this_name->object_converter) {
  if (ACPI_COMPARE_NAMESEG(node->name.ascii, this_name->name)) {



   if ((return_btype & this_name->unexpected_btypes) &&
       (this_name->package_index ==
        ACPI_ALL_PACKAGE_ELEMENTS
        || package_index == this_name->package_index)) {
    return (this_name);
   }

   return (((void*)0));
  }

  this_name++;
 }

 return (((void*)0));
}
