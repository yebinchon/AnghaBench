
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int grant_status_t ;
struct TYPE_4__ {int * ptes; TYPE_1__* area; } ;
struct TYPE_3__ {int * addr; } ;


 int PAGE_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 TYPE_2__ gnttab_status_vm_area ;
 int init_mm ;
 int mfn_pte (int ,int ) ;
 int set_pte_at (int *,unsigned long,int ,int ) ;

int arch_gnttab_map_status(uint64_t *frames, unsigned long nr_gframes,
      unsigned long max_nr_gframes,
      grant_status_t **__shared)
{
 grant_status_t *shared = *__shared;
 unsigned long addr;
 unsigned long i;

 if (shared == ((void*)0))
  *__shared = shared = gnttab_status_vm_area.area->addr;

 addr = (unsigned long)shared;

 for (i = 0; i < nr_gframes; i++) {
  set_pte_at(&init_mm, addr, gnttab_status_vm_area.ptes[i],
      mfn_pte(frames[i], PAGE_KERNEL));
  addr += PAGE_SIZE;
 }

 return 0;
}
