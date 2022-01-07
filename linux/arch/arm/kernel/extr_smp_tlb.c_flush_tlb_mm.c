
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int __flush_tlb_mm (struct mm_struct*) ;
 int broadcast_tlb_mm_a15_erratum (struct mm_struct*) ;
 int ipi_flush_tlb_mm ;
 int mm_cpumask (struct mm_struct*) ;
 int on_each_cpu_mask (int ,int ,struct mm_struct*,int) ;
 scalar_t__ tlb_ops_need_broadcast () ;

void flush_tlb_mm(struct mm_struct *mm)
{
 if (tlb_ops_need_broadcast())
  on_each_cpu_mask(mm_cpumask(mm), ipi_flush_tlb_mm, mm, 1);
 else
  __flush_tlb_mm(mm);
 broadcast_tlb_mm_a15_erratum(mm);
}
