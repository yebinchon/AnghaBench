
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_data_node {scalar_t__ handle; } ;
typedef int ssize_t ;


 int acpi_object_path (scalar_t__,char*) ;

__attribute__((used)) static ssize_t data_node_show_path(struct acpi_data_node *dn, char *buf)
{
 return dn->handle ? acpi_object_path(dn->handle, buf) : 0;
}
