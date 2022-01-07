
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
union acpi_object {TYPE_1__ package; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_PACKAGE ;
 int acpi_db_read_from_object (struct acpi_namespace_node*,int ,union acpi_object**) ;
 int acpi_os_free (union acpi_object*) ;
 int acpi_os_printf (char*,int ) ;

__attribute__((used)) static acpi_status acpi_db_test_package_type(struct acpi_namespace_node *node)
{
 union acpi_object *temp1 = ((void*)0);
 acpi_status status;



 status = acpi_db_read_from_object(node, ACPI_TYPE_PACKAGE, &temp1);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 acpi_os_printf(" %.2X Elements", temp1->package.count);
 acpi_os_free(temp1);
 return (status);
}
