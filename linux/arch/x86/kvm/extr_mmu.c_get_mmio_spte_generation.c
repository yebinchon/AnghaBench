
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int MMIO_SPTE_GEN_HIGH_MASK ;
 int MMIO_SPTE_GEN_HIGH_START ;
 int MMIO_SPTE_GEN_LOW_MASK ;
 int MMIO_SPTE_GEN_LOW_START ;
 int shadow_mmio_mask ;

__attribute__((used)) static u64 get_mmio_spte_generation(u64 spte)
{
 u64 gen;

 spte &= ~shadow_mmio_mask;

 gen = (spte & MMIO_SPTE_GEN_LOW_MASK) >> MMIO_SPTE_GEN_LOW_START;
 gen |= (spte & MMIO_SPTE_GEN_HIGH_MASK) >> MMIO_SPTE_GEN_HIGH_START;
 return gen;
}
