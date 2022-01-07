
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xcr0; } ;
struct kvm_vcpu {scalar_t__ guest_xcr0_loaded; TYPE_1__ arch; } ;


 int XCR_XFEATURE_ENABLED_MASK ;
 scalar_t__ host_xcr0 ;
 int xsetbv (int ,scalar_t__) ;

void kvm_put_guest_xcr0(struct kvm_vcpu *vcpu)
{
 if (vcpu->guest_xcr0_loaded) {
  if (vcpu->arch.xcr0 != host_xcr0)
   xsetbv(XCR_XFEATURE_ENABLED_MASK, host_xcr0);
  vcpu->guest_xcr0_loaded = 0;
 }
}
