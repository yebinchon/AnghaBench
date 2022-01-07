
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long unimpl_va_mask; } ;


 int HPAGE_REGION_BASE ;
 int HPAGE_SHIFT ;
 scalar_t__ PAGE_SHIFT ;
 unsigned long POW2 (int) ;
 unsigned long VHPT_ENABLE_BIT ;
 unsigned long ffz (unsigned long) ;
 int ia64_set_pta (unsigned long) ;
 int ia64_set_rr (int ,int) ;
 int ia64_srlz_d () ;
 int ia64_tlb_init () ;
 TYPE_1__* local_cpu_data ;
 unsigned long mapped_space_bits ;
 int panic (char*,...) ;
 scalar_t__ pte_bits ;
 int vmlpt_bits ;

void ia64_mmu_init(void *my_cpu_data)
{
 unsigned long pta, impl_va_bits;
 extern void tlb_init(void);
 impl_va_bits = ffz(~(local_cpu_data->unimpl_va_mask | (7UL << 61)));

 if (impl_va_bits < 51 || impl_va_bits > 61)
  panic("CPU has bogus IMPL_VA_MSB value of %lu!\n", impl_va_bits - 1);






 if (((3*(PAGE_SHIFT - 3) + PAGE_SHIFT) - PAGE_SHIFT > (impl_va_bits - PAGE_SHIFT + 3) - 3) ||
     ((3*(PAGE_SHIFT - 3) + PAGE_SHIFT) > impl_va_bits - 1))
  panic("Cannot build a big enough virtual-linear page table"
        " to cover mapped address space.\n"
        " Try using a smaller page size.\n");



 pta = (1ULL << (61)) - (1ULL << ((impl_va_bits - PAGE_SHIFT + 3)));







 ia64_set_pta(pta | (0 << 8) | ((impl_va_bits - PAGE_SHIFT + 3) << 2) | 1);

 ia64_tlb_init();





}
