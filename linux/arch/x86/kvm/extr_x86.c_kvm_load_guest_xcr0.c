
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xcr0; } ;
struct kvm_vcpu {int guest_xcr0_loaded; TYPE_1__ arch; } ;


 int X86_CR4_OSXSAVE ;
 int XCR_XFEATURE_ENABLED_MASK ;
 scalar_t__ host_xcr0 ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;
 int xsetbv (int ,scalar_t__) ;

void kvm_load_guest_xcr0(struct kvm_vcpu *vcpu)
{
 if (kvm_read_cr4_bits(vcpu, X86_CR4_OSXSAVE) &&
   !vcpu->guest_xcr0_loaded) {

  if (vcpu->arch.xcr0 != host_xcr0)
   xsetbv(XCR_XFEATURE_ENABLED_MASK, vcpu->arch.xcr0);
  vcpu->guest_xcr0_loaded = 1;
 }
}
