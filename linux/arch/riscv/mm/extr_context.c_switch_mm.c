
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mm_struct {int pgd; } ;


 int CSR_SATP ;
 int SATP_MODE ;
 int cpumask_clear_cpu (unsigned int,int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 int csr_write (int ,int) ;
 int flush_icache_deferred (struct mm_struct*) ;
 int local_flush_tlb_all () ;
 int mm_cpumask (struct mm_struct*) ;
 unsigned int smp_processor_id () ;
 scalar_t__ unlikely (int) ;
 int virt_to_pfn (int ) ;

void switch_mm(struct mm_struct *prev, struct mm_struct *next,
 struct task_struct *task)
{
 unsigned int cpu;

 if (unlikely(prev == next))
  return;






 cpu = smp_processor_id();

 cpumask_clear_cpu(cpu, mm_cpumask(prev));
 cpumask_set_cpu(cpu, mm_cpumask(next));

 csr_write(CSR_SATP, virt_to_pfn(next->pgd) | SATP_MODE);
 local_flush_tlb_all();

 flush_icache_deferred(next);
}
