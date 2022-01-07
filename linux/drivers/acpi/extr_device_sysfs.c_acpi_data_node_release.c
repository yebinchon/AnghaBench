
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct acpi_data_node {int kobj_done; } ;


 int complete (int *) ;
 struct acpi_data_node* to_data_node (struct kobject*) ;

__attribute__((used)) static void acpi_data_node_release(struct kobject *kobj)
{
 struct acpi_data_node *dn = to_data_node(kobj);
 complete(&dn->kobj_done);
}
