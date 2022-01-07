
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int intr_msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int LPCR_ILE ;
 int MSR_LE ;

__attribute__((used)) static void kvmppc_set_lpcr_pr(struct kvm_vcpu *vcpu, u64 new_lpcr)
{
 if (new_lpcr & LPCR_ILE)
  vcpu->arch.intr_msr |= MSR_LE;
 else
  vcpu->arch.intr_msr &= ~MSR_LE;
}
