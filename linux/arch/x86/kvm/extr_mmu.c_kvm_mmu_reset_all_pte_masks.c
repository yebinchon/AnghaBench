
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int x86_cache_bits; } ;


 int GENMASK_ULL (int,int ) ;
 int PAGE_SHIFT ;
 int WARN_ON_ONCE (int ) ;
 int X86_BUG_L1TF ;
 TYPE_1__ boot_cpu_data ;
 int boot_cpu_has_bug (int ) ;
 int kvm_get_shadow_phys_bits () ;
 scalar_t__ rsvd_bits (int,int) ;
 scalar_t__ shadow_acc_track_mask ;
 scalar_t__ shadow_accessed_mask ;
 scalar_t__ shadow_dirty_mask ;
 scalar_t__ shadow_mmio_mask ;
 int shadow_nonpresent_or_rsvd_lower_gfn_mask ;
 scalar_t__ shadow_nonpresent_or_rsvd_mask ;
 int shadow_nonpresent_or_rsvd_mask_len ;
 scalar_t__ shadow_nx_mask ;
 int shadow_phys_bits ;
 scalar_t__ shadow_present_mask ;
 scalar_t__ shadow_user_mask ;
 scalar_t__ shadow_x_mask ;

__attribute__((used)) static void kvm_mmu_reset_all_pte_masks(void)
{
 u8 low_phys_bits;

 shadow_user_mask = 0;
 shadow_accessed_mask = 0;
 shadow_dirty_mask = 0;
 shadow_nx_mask = 0;
 shadow_x_mask = 0;
 shadow_mmio_mask = 0;
 shadow_present_mask = 0;
 shadow_acc_track_mask = 0;

 shadow_phys_bits = kvm_get_shadow_phys_bits();
 shadow_nonpresent_or_rsvd_mask = 0;
 low_phys_bits = boot_cpu_data.x86_cache_bits;
 if (boot_cpu_data.x86_cache_bits <
     52 - shadow_nonpresent_or_rsvd_mask_len) {
  shadow_nonpresent_or_rsvd_mask =
   rsvd_bits(boot_cpu_data.x86_cache_bits -
      shadow_nonpresent_or_rsvd_mask_len,
      boot_cpu_data.x86_cache_bits - 1);
  low_phys_bits -= shadow_nonpresent_or_rsvd_mask_len;
 } else
  WARN_ON_ONCE(boot_cpu_has_bug(X86_BUG_L1TF));

 shadow_nonpresent_or_rsvd_lower_gfn_mask =
  GENMASK_ULL(low_phys_bits - 1, PAGE_SHIFT);
}
