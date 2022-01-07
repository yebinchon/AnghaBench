
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_6__ {int ** ptes; } ;
struct TYPE_5__ {int ** ptes; TYPE_1__* area; } ;
struct TYPE_4__ {void* addr; } ;


 scalar_t__ PAGE_SIZE ;
 int __pte (int ) ;
 TYPE_3__ gnttab_shared_vm_area ;
 TYPE_2__ gnttab_status_vm_area ;
 int init_mm ;
 int set_pte_at (int *,unsigned long,int *,int ) ;

void arch_gnttab_unmap(void *shared, unsigned long nr_gframes)
{
 pte_t **ptes;
 unsigned long addr;
 unsigned long i;

 if (shared == gnttab_status_vm_area.area->addr)
  ptes = gnttab_status_vm_area.ptes;
 else
  ptes = gnttab_shared_vm_area.ptes;

 addr = (unsigned long)shared;

 for (i = 0; i < nr_gframes; i++) {
  set_pte_at(&init_mm, addr, ptes[i], __pte(0));
  addr += PAGE_SIZE;
 }
}
