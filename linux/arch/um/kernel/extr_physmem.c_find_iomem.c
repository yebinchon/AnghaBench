
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomem_region {unsigned long size; unsigned long virt; struct iomem_region* next; int driver; } ;


 struct iomem_region* iomem_regions ;
 int strcmp (int ,char*) ;

unsigned long find_iomem(char *driver, unsigned long *len_out)
{
 struct iomem_region *region = iomem_regions;

 while (region != ((void*)0)) {
  if (!strcmp(region->driver, driver)) {
   *len_out = region->size;
   return region->virt;
  }

  region = region->next;
 }

 return 0;
}
