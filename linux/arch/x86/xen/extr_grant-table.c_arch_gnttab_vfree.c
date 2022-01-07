
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_vm_area {int ptes; int area; } ;


 int free_vm_area (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void arch_gnttab_vfree(struct gnttab_vm_area *area)
{
 free_vm_area(area->area);
 kfree(area->ptes);
}
