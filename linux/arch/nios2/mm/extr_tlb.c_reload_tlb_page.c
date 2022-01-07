
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; } ;
typedef int pte_t ;
struct TYPE_2__ {int context; } ;


 unsigned long get_pid_from_context (int *) ;
 int reload_tlb_one_pid (unsigned long,unsigned long,int ) ;

void reload_tlb_page(struct vm_area_struct *vma, unsigned long addr, pte_t pte)
{
 unsigned long mmu_pid = get_pid_from_context(&vma->vm_mm->context);

 reload_tlb_one_pid(addr, mmu_pid, pte);
}
