
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* acpi_node_get_parent (struct fwnode_handle*) ;

__attribute__((used)) static struct fwnode_handle *
acpi_fwnode_get_parent(struct fwnode_handle *fwnode)
{
 return acpi_node_get_parent(fwnode);
}
