
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_object {int dummy; } acpi_object ;
struct list_head {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_buffer {int pointer; int member_0; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (int ) ;
 int ACPI_TYPE_PACKAGE ;
 int acpi_evaluate_object_typed (int ,int *,int *,struct acpi_buffer*,int ) ;
 scalar_t__ acpi_nondev_subnode_extract (int ,int ,union acpi_object const*,struct list_head*,struct fwnode_handle*) ;

__attribute__((used)) static bool acpi_nondev_subnode_data_ok(acpi_handle handle,
     const union acpi_object *link,
     struct list_head *list,
     struct fwnode_handle *parent)
{
 struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER };
 acpi_status status;

 status = acpi_evaluate_object_typed(handle, ((void*)0), ((void*)0), &buf,
         ACPI_TYPE_PACKAGE);
 if (ACPI_FAILURE(status))
  return 0;

 if (acpi_nondev_subnode_extract(buf.pointer, handle, link, list,
     parent))
  return 1;

 ACPI_FREE(buf.pointer);
 return 0;
}
