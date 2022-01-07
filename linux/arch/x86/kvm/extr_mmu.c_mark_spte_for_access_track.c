
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PT_WRITABLE_MASK ;
 int WARN_ONCE (int,char*) ;
 scalar_t__ is_access_track_spte (int) ;
 int shadow_acc_track_mask ;
 int shadow_acc_track_saved_bits_mask ;
 int shadow_acc_track_saved_bits_shift ;
 int shadow_accessed_mask ;
 scalar_t__ spte_ad_enabled (int) ;
 int spte_can_locklessly_be_made_writable (int) ;

__attribute__((used)) static u64 mark_spte_for_access_track(u64 spte)
{
 if (spte_ad_enabled(spte))
  return spte & ~shadow_accessed_mask;

 if (is_access_track_spte(spte))
  return spte;






 WARN_ONCE((spte & PT_WRITABLE_MASK) &&
    !spte_can_locklessly_be_made_writable(spte),
    "kvm: Writable SPTE is not locklessly dirty-trackable\n");

 WARN_ONCE(spte & (shadow_acc_track_saved_bits_mask <<
     shadow_acc_track_saved_bits_shift),
    "kvm: Access Tracking saved bit locations are not zero\n");

 spte |= (spte & shadow_acc_track_saved_bits_mask) <<
  shadow_acc_track_saved_bits_shift;
 spte &= ~shadow_acc_track_mask;

 return spte;
}
