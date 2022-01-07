
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int shadow_nonpresent_or_rsvd_lower_gfn_mask ;
 int shadow_nonpresent_or_rsvd_mask ;
 int shadow_nonpresent_or_rsvd_mask_len ;

__attribute__((used)) static gfn_t get_mmio_spte_gfn(u64 spte)
{
 u64 gpa = spte & shadow_nonpresent_or_rsvd_lower_gfn_mask;

 gpa |= (spte >> shadow_nonpresent_or_rsvd_mask_len)
        & shadow_nonpresent_or_rsvd_mask;

 return gpa >> PAGE_SHIFT;
}
