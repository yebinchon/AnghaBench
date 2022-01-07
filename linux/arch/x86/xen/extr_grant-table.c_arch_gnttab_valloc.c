
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_vm_area {int * ptes; int * area; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int * alloc_vm_area (unsigned int,int *) ;
 int kfree (int *) ;
 int * kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int arch_gnttab_valloc(struct gnttab_vm_area *area, unsigned nr_frames)
{
 area->ptes = kmalloc_array(nr_frames, sizeof(*area->ptes), GFP_KERNEL);
 if (area->ptes == ((void*)0))
  return -ENOMEM;

 area->area = alloc_vm_area(PAGE_SIZE * nr_frames, area->ptes);
 if (area->area == ((void*)0)) {
  kfree(area->ptes);
  return -ENOMEM;
 }

 return 0;
}
