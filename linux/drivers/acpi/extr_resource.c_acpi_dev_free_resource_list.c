
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int resource_list_free (struct list_head*) ;

void acpi_dev_free_resource_list(struct list_head *list)
{
 resource_list_free(list);
}
