
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_args {int ta_end; int ta_start; } ;


 int local_flush_tlb_kernel_range (int ,int ) ;

__attribute__((used)) static inline void ipi_flush_tlb_kernel_range(void *arg)
{
 struct tlb_args *ta = (struct tlb_args *)arg;

 local_flush_tlb_kernel_range(ta->ta_start, ta->ta_end);
}
