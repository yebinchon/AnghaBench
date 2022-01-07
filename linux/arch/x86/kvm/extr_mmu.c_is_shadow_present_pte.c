
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int is_mmio_spte (scalar_t__) ;

__attribute__((used)) static int is_shadow_present_pte(u64 pte)
{
 return (pte != 0) && !is_mmio_spte(pte);
}
