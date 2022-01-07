
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_args {int ta_start; } ;


 int local_flush_tlb_kernel_page (int ) ;

__attribute__((used)) static inline void ipi_flush_tlb_kernel_page(void *arg)
{
 struct tlb_args *ta = (struct tlb_args *)arg;

 local_flush_tlb_kernel_page(ta->ta_start);
}
