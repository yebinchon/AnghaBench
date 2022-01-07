
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_args {unsigned long ta_start; unsigned long ta_end; } ;


 int broadcast_tlb_a15_erratum () ;
 int ipi_flush_tlb_kernel_range ;
 int local_flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int on_each_cpu (int ,struct tlb_args*,int) ;
 scalar_t__ tlb_ops_need_broadcast () ;

void flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 if (tlb_ops_need_broadcast()) {
  struct tlb_args ta;
  ta.ta_start = start;
  ta.ta_end = end;
  on_each_cpu(ipi_flush_tlb_kernel_range, &ta, 1);
 } else
  local_flush_tlb_kernel_range(start, end);
 broadcast_tlb_a15_erratum();
}
