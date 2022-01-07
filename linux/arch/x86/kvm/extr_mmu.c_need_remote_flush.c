
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT64_BASE_ADDR_MASK ;
 int PT64_PERM_MASK ;
 int is_shadow_present_pte (int) ;
 int shadow_nx_mask ;

__attribute__((used)) static bool need_remote_flush(u64 old, u64 new)
{
 if (!is_shadow_present_pte(old))
  return 0;
 if (!is_shadow_present_pte(new))
  return 1;
 if ((old ^ new) & PT64_BASE_ADDR_MASK)
  return 1;
 old ^= shadow_nx_mask;
 new ^= shadow_nx_mask;
 return (old & ~new & PT64_PERM_MASK) != 0;
}
