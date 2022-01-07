
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT_WRITABLE_MASK ;
 int spte_shadow_dirty_mask (int) ;

__attribute__((used)) static bool is_dirty_spte(u64 spte)
{
 u64 dirty_mask = spte_shadow_dirty_mask(spte);

 return dirty_mask ? spte & dirty_mask : spte & PT_WRITABLE_MASK;
}
