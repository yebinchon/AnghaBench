
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int guest_debug; } ;
struct TYPE_6__ {int as; } ;
struct TYPE_4__ {scalar_t__ iprcc; int gpsw; int peraddr; int perc; } ;


 int KVM_GUESTDBG_EXIT_PENDING ;
 scalar_t__ PGM_SPACE_SWITCH ;
 int PSW_BITS_AS_HOME ;
 int PSW_BITS_AS_PRIMARY ;
 scalar_t__ debug_exit_required (struct kvm_vcpu*,int ,int ) ;
 int filter_guest_per_event (struct kvm_vcpu*) ;
 scalar_t__ hssec (struct kvm_vcpu*) ;
 int old_as_is_home (struct kvm_vcpu*) ;
 scalar_t__ old_ssec (struct kvm_vcpu*) ;
 scalar_t__ pssec (struct kvm_vcpu*) ;
 TYPE_3__ psw_bits (int ) ;

int kvm_s390_handle_per_event(struct kvm_vcpu *vcpu)
{
 int rc, new_as;

 if (debug_exit_required(vcpu, vcpu->arch.sie_block->perc,
    vcpu->arch.sie_block->peraddr))
  vcpu->guest_debug |= KVM_GUESTDBG_EXIT_PENDING;

 rc = filter_guest_per_event(vcpu);
 if (rc)
  return rc;







 if (vcpu->arch.sie_block->iprcc == PGM_SPACE_SWITCH) {
  vcpu->arch.sie_block->iprcc = 0;
  new_as = psw_bits(vcpu->arch.sie_block->gpsw).as;






  if (((new_as == PSW_BITS_AS_HOME) ^ old_as_is_home(vcpu)) &&
      (pssec(vcpu) || hssec(vcpu)))
   vcpu->arch.sie_block->iprcc = PGM_SPACE_SWITCH;





  if (new_as == PSW_BITS_AS_PRIMARY && !old_as_is_home(vcpu) &&
      (pssec(vcpu) || old_ssec(vcpu)))
   vcpu->arch.sie_block->iprcc = PGM_SPACE_SWITCH;
 }
 return 0;
}
