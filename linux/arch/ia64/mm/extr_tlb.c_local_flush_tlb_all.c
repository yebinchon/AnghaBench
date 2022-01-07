
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ptce_base; unsigned long* ptce_count; unsigned long* ptce_stride; } ;


 int ia64_ptce (unsigned long) ;
 int ia64_srlz_i () ;
 TYPE_1__* local_cpu_data ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void
local_flush_tlb_all (void)
{
 unsigned long i, j, flags, count0, count1, stride0, stride1, addr;

 addr = local_cpu_data->ptce_base;
 count0 = local_cpu_data->ptce_count[0];
 count1 = local_cpu_data->ptce_count[1];
 stride0 = local_cpu_data->ptce_stride[0];
 stride1 = local_cpu_data->ptce_stride[1];

 local_irq_save(flags);
 for (i = 0; i < count0; ++i) {
  for (j = 0; j < count1; ++j) {
   ia64_ptce(addr);
   addr += stride1;
  }
  addr += stride0;
 }
 local_irq_restore(flags);
 ia64_srlz_i();
}
