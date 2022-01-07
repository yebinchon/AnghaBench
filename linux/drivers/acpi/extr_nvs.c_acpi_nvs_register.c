
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvs_region {int node; void* size; void* phys_start; } ;
typedef void* __u64 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvs_region* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nvs_region_list ;
 int suspend_nvs_register (void*,void*) ;

int acpi_nvs_register(__u64 start, __u64 size)
{
 struct nvs_region *region;

 region = kmalloc(sizeof(*region), GFP_KERNEL);
 if (!region)
  return -ENOMEM;
 region->phys_start = start;
 region->size = size;
 list_add_tail(&region->node, &nvs_region_list);

 return suspend_nvs_register(start, size);
}
