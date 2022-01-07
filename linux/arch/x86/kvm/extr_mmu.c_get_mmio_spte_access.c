
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int shadow_mmio_access_mask ;

__attribute__((used)) static unsigned get_mmio_spte_access(u64 spte)
{
 return spte & shadow_mmio_access_mask;
}
