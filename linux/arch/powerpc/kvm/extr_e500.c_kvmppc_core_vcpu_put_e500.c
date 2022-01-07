
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shadow_msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MSR_SPE ;
 int kvmppc_booke_vcpu_put (struct kvm_vcpu*) ;
 int kvmppc_vcpu_disable_spe (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_core_vcpu_put_e500(struct kvm_vcpu *vcpu)
{





 kvmppc_booke_vcpu_put(vcpu);
}
