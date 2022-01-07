
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_scan_handler {int list_node; } ;


 int EINVAL ;
 int acpi_scan_handlers_list ;
 int list_add_tail (int *,int *) ;

int acpi_scan_add_handler(struct acpi_scan_handler *handler)
{
 if (!handler)
  return -EINVAL;

 list_add_tail(&handler->list_node, &acpi_scan_handlers_list);
 return 0;
}
