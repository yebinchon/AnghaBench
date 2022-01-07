
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ fwnode_property_present (struct fwnode_handle*,char const*) ;
 int is_acpi_data_node (struct fwnode_handle*) ;
 unsigned int strlen (char const*) ;
 int strncmp (char const*,char const*,unsigned int) ;
 TYPE_1__* to_acpi_data_node (struct fwnode_handle*) ;

__attribute__((used)) static bool is_acpi_graph_node(struct fwnode_handle *fwnode,
          const char *str)
{
 unsigned int len = strlen(str);
 const char *name;

 if (!len || !is_acpi_data_node(fwnode))
  return 0;

 name = to_acpi_data_node(fwnode)->name;

 return (fwnode_property_present(fwnode, "reg") &&
  !strncmp(name, str, len) && name[len] == '@') ||
  fwnode_property_present(fwnode, str);
}
