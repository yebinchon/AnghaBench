
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shadow_msr; TYPE_2__* shared; } ;
struct kvm_vcpu {TYPE_1__ arch; scalar_t__ guest_debug; } ;
struct TYPE_4__ {int msr; } ;


 int MSR_DE ;

__attribute__((used)) static void kvmppc_vcpu_sync_debug(struct kvm_vcpu *vcpu)
{


 vcpu->arch.shadow_msr &= ~MSR_DE;
 vcpu->arch.shadow_msr |= vcpu->arch.shared->msr & MSR_DE;



 if (vcpu->guest_debug) {







  vcpu->arch.shadow_msr |= MSR_DE;
  vcpu->arch.shared->msr &= ~MSR_DE;

 }
}
