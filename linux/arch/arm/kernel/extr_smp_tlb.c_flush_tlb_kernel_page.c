
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_args {unsigned long ta_start; } ;


 int __flush_tlb_kernel_page (unsigned long) ;
 int broadcast_tlb_a15_erratum () ;
 int ipi_flush_tlb_kernel_page ;
 int on_each_cpu (int ,struct tlb_args*,int) ;
 scalar_t__ tlb_ops_need_broadcast () ;

void flush_tlb_kernel_page(unsigned long kaddr)
{
 if (tlb_ops_need_broadcast()) {
  struct tlb_args ta;
  ta.ta_start = kaddr;
  on_each_cpu(ipi_flush_tlb_kernel_page, &ta, 1);
 } else
  __flush_tlb_kernel_page(kaddr);
 broadcast_tlb_a15_erratum();
}
