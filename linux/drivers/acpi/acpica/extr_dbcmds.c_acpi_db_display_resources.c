
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ascii; } ;
struct acpi_namespace_node {scalar_t__ type; TYPE_1__ name; } ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_LV_RESOURCES ;
 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 struct acpi_namespace_node* acpi_db_convert_to_node (char*) ;
 int acpi_db_device_resources (struct acpi_namespace_node*,int ,int *,int *) ;
 int acpi_db_set_output_destination (int ) ;
 int acpi_dbg_level ;
 int acpi_os_printf (char*,int ,int ) ;
 int acpi_ut_get_type_name (scalar_t__) ;
 int acpi_walk_namespace (scalar_t__,int ,int ,int (*) (struct acpi_namespace_node*,int ,int *,int *),int *,int *,int *) ;
 int strcmp (char*,char*) ;

void acpi_db_display_resources(char *object_arg)
{
 struct acpi_namespace_node *node;

 acpi_db_set_output_destination(ACPI_DB_REDIRECTABLE_OUTPUT);
 acpi_dbg_level |= ACPI_LV_RESOURCES;



 if (!object_arg || (!strcmp(object_arg, "*"))) {
  (void)acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
       ACPI_UINT32_MAX,
       acpi_db_device_resources, ((void*)0), ((void*)0),
       ((void*)0));
 } else {


  node = acpi_db_convert_to_node(object_arg);
  if (node) {
   if (node->type != ACPI_TYPE_DEVICE) {
    acpi_os_printf
        ("%4.4s: Name is not a device object (%s)\n",
         node->name.ascii,
         acpi_ut_get_type_name(node->type));
   } else {
    (void)acpi_db_device_resources(node, 0, ((void*)0),
              ((void*)0));
   }
  }
 }

 acpi_db_set_output_destination(ACPI_DB_CONSOLE_OUTPUT);
}
