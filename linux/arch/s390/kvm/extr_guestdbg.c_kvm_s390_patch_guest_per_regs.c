
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {unsigned long* gcr; } ;


 unsigned long CR0_CLOCK_COMPARATOR_SUBMASK ;
 unsigned long PER_EVENT_IFETCH ;
 int PER_EVENT_NULLIFICATION ;
 int enable_all_hw_bp (struct kvm_vcpu*) ;
 int enable_all_hw_wp (struct kvm_vcpu*) ;
 scalar_t__ guestdbg_hw_bp_enabled (struct kvm_vcpu*) ;
 scalar_t__ guestdbg_sstep_enabled (struct kvm_vcpu*) ;

void kvm_s390_patch_guest_per_regs(struct kvm_vcpu *vcpu)
{






 if (guestdbg_sstep_enabled(vcpu)) {

  vcpu->arch.sie_block->gcr[0] &= ~CR0_CLOCK_COMPARATOR_SUBMASK;
  vcpu->arch.sie_block->gcr[9] |= PER_EVENT_IFETCH;
  vcpu->arch.sie_block->gcr[10] = 0;
  vcpu->arch.sie_block->gcr[11] = -1UL;
 }

 if (guestdbg_hw_bp_enabled(vcpu)) {
  enable_all_hw_bp(vcpu);
  enable_all_hw_wp(vcpu);
 }


 if (vcpu->arch.sie_block->gcr[9] & PER_EVENT_NULLIFICATION)
  vcpu->arch.sie_block->gcr[9] &= ~PER_EVENT_NULLIFICATION;
}
