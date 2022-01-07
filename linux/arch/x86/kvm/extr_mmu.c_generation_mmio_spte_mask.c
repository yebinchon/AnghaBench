
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MMIO_SPTE_GEN_HIGH_MASK ;
 int MMIO_SPTE_GEN_HIGH_START ;
 int MMIO_SPTE_GEN_LOW_MASK ;
 int MMIO_SPTE_GEN_LOW_START ;
 int MMIO_SPTE_GEN_MASK ;
 int WARN_ON (int) ;

__attribute__((used)) static u64 generation_mmio_spte_mask(u64 gen)
{
 u64 mask;

 WARN_ON(gen & ~MMIO_SPTE_GEN_MASK);

 mask = (gen << MMIO_SPTE_GEN_LOW_START) & MMIO_SPTE_GEN_LOW_MASK;
 mask |= (gen << MMIO_SPTE_GEN_HIGH_START) & MMIO_SPTE_GEN_HIGH_MASK;
 return mask;
}
