
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__* context; int mm_users; } ;
struct flush_tlb_page_struct {unsigned long addr; struct mm_struct* mm; struct vm_area_struct* vma; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int NR_CPUS ;
 int atomic_read (int *) ;
 int cpu_online (int) ;
 TYPE_1__* current ;
 int flush_tlb_current_page (struct mm_struct*,struct vm_area_struct*,unsigned long) ;
 int ipi_flush_tlb_page ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int ,struct flush_tlb_page_struct*,int) ;
 int smp_processor_id () ;

void
flush_tlb_page(struct vm_area_struct *vma, unsigned long addr)
{
 struct flush_tlb_page_struct data;
 struct mm_struct *mm = vma->vm_mm;

 preempt_disable();

 if (mm == current->active_mm) {
  flush_tlb_current_page(mm, vma, addr);
  if (atomic_read(&mm->mm_users) <= 1) {
   int cpu, this_cpu = smp_processor_id();
   for (cpu = 0; cpu < NR_CPUS; cpu++) {
    if (!cpu_online(cpu) || cpu == this_cpu)
     continue;
    if (mm->context[cpu])
     mm->context[cpu] = 0;
   }
   preempt_enable();
   return;
  }
 }

 data.vma = vma;
 data.mm = mm;
 data.addr = addr;

 smp_call_function(ipi_flush_tlb_page, &data, 1);

 preempt_enable();
}
