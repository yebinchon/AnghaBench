
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* elements; } ;
union acpi_object {TYPE_3__ package; } ;
struct list_head {int dummy; } ;
struct fwnode_handle {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_4__ {int pointer; } ;
struct TYPE_5__ {TYPE_1__ string; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_get_handle (int ,int ,int *) ;
 int acpi_nondev_subnode_data_ok (int ,union acpi_object const*,struct list_head*,struct fwnode_handle*) ;

__attribute__((used)) static bool acpi_nondev_subnode_ok(acpi_handle scope,
       const union acpi_object *link,
       struct list_head *list,
       struct fwnode_handle *parent)
{
 acpi_handle handle;
 acpi_status status;

 if (!scope)
  return 0;

 status = acpi_get_handle(scope, link->package.elements[1].string.pointer,
     &handle);
 if (ACPI_FAILURE(status))
  return 0;

 return acpi_nondev_subnode_data_ok(handle, link, list, parent);
}
