
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int guest_owned_ext; int shadow_msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int MSR_BE ;
 int MSR_DR ;
 int MSR_EE ;
 int MSR_FE0 ;
 int MSR_FE1 ;
 int MSR_HV ;
 int MSR_IR ;
 int MSR_ISF ;
 int MSR_LE ;
 int MSR_ME ;
 int MSR_PR ;
 int MSR_RI ;
 int MSR_SE ;
 int MSR_SF ;
 int MSR_TM ;
 int MSR_TS_MASK ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;

__attribute__((used)) static void kvmppc_recalc_shadow_msr(struct kvm_vcpu *vcpu)
{
 ulong guest_msr = kvmppc_get_msr(vcpu);
 ulong smsr = guest_msr;






 smsr &= MSR_FE0 | MSR_FE1 | MSR_SF | MSR_SE | MSR_BE | MSR_LE;


 smsr |= MSR_ME | MSR_RI | MSR_IR | MSR_DR | MSR_PR | MSR_EE;

 smsr |= (guest_msr & vcpu->arch.guest_owned_ext);
 vcpu->arch.shadow_msr = smsr;
}
