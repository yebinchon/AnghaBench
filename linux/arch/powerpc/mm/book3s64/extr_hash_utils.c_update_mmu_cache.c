
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;
struct TYPE_3__ {scalar_t__ regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 unsigned long TASK_SIZE ;
 unsigned long TRAP (scalar_t__) ;
 TYPE_2__* current ;
 int hash_preload (int ,unsigned long,int,unsigned long) ;
 int prefetch (void*) ;
 int pte_young (int ) ;
 scalar_t__ radix_enabled () ;

void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
        pte_t *ptep)
{




 unsigned long trap;
 bool is_exec;

 if (radix_enabled()) {
  prefetch((void *)address);
  return;
 }


 if (!pte_young(*ptep) || address >= TASK_SIZE)
  return;
 trap = current->thread.regs ? TRAP(current->thread.regs) : 0UL;
 switch (trap) {
 case 0x300:
  is_exec = 0;
  break;
 case 0x400:
  is_exec = 1;
  break;
 default:
  return;
 }

 hash_preload(vma->vm_mm, address, is_exec, trap);
}
