
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct acpi_device {int dummy; } ;


 int METHOD_NAME__DMA ;
 int __acpi_dev_get_resources (struct acpi_device*,struct list_head*,int ,int *,int ) ;
 int is_memory ;

int acpi_dev_get_dma_resources(struct acpi_device *adev, struct list_head *list)
{
 return __acpi_dev_get_resources(adev, list, is_memory, ((void*)0),
     METHOD_NAME__DMA);
}
