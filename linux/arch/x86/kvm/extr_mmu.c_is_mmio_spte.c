
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int shadow_mmio_mask ;
 int shadow_mmio_value ;

__attribute__((used)) static bool is_mmio_spte(u64 spte)
{
 return (spte & shadow_mmio_mask) == shadow_mmio_value;
}
