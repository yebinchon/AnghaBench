
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int gfn_t ;


 int KVM_PAGE_TRACK_WRITE ;
 int PFERR_PRESENT_MASK ;
 int PFERR_RSVD_MASK ;
 int PFERR_WRITE_MASK ;
 scalar_t__ kvm_page_track_is_active (struct kvm_vcpu*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool page_fault_handle_page_track(struct kvm_vcpu *vcpu,
      u32 error_code, gfn_t gfn)
{
 if (unlikely(error_code & PFERR_RSVD_MASK))
  return 0;

 if (!(error_code & PFERR_PRESENT_MASK) ||
       !(error_code & PFERR_WRITE_MASK))
  return 0;





 if (kvm_page_track_is_active(vcpu, gfn, KVM_PAGE_TRACK_WRITE))
  return 1;

 return 0;
}
