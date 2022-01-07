
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr_t ;


 int BUG_ON (int) ;
 int CPU_FTR_ARCH_300 ;
 int CPU_FTR_HVMODE ;
 unsigned long SID_SHIFT_1T ;
 scalar_t__ ULONG_MAX ;
 int early_cpu_has_feature (int ) ;
 int memblock_set_current_limit (scalar_t__) ;
 scalar_t__ min_t (int ,scalar_t__,unsigned long) ;
 scalar_t__ ppc64_rma_size ;
 int u64 ;

void hash__setup_initial_memory_limit(phys_addr_t first_memblock_base,
    phys_addr_t first_memblock_size)
{




 BUG_ON(first_memblock_base != 0);
 if (!early_cpu_has_feature(CPU_FTR_HVMODE)) {
  ppc64_rma_size = first_memblock_size;
  if (!early_cpu_has_feature(CPU_FTR_ARCH_300))
   ppc64_rma_size = min_t(u64, ppc64_rma_size, 0x40000000);
  else
   ppc64_rma_size = min_t(u64, ppc64_rma_size,
            1UL << SID_SHIFT_1T);


  memblock_set_current_limit(ppc64_rma_size);
 } else {
  ppc64_rma_size = ULONG_MAX;
 }
}
