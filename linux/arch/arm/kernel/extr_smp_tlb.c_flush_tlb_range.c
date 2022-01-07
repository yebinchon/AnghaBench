
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
struct tlb_args {unsigned long ta_start; unsigned long ta_end; struct vm_area_struct* ta_vma; } ;


 int broadcast_tlb_mm_a15_erratum (int ) ;
 int ipi_flush_tlb_range ;
 int local_flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int mm_cpumask (int ) ;
 int on_each_cpu_mask (int ,int ,struct tlb_args*,int) ;
 scalar_t__ tlb_ops_need_broadcast () ;

void flush_tlb_range(struct vm_area_struct *vma,
                     unsigned long start, unsigned long end)
{
 if (tlb_ops_need_broadcast()) {
  struct tlb_args ta;
  ta.ta_vma = vma;
  ta.ta_start = start;
  ta.ta_end = end;
  on_each_cpu_mask(mm_cpumask(vma->vm_mm), ipi_flush_tlb_range,
     &ta, 1);
 } else
  local_flush_tlb_range(vma, start, end);
 broadcast_tlb_mm_a15_erratum(vma->vm_mm);
}
