
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_HFLAG_SPLIT_HACK ;
 int MSR_DR ;
 int MSR_IR ;
 int SPLIT_HACK_MASK ;
 int SPLIT_HACK_OFFS ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_set_pc (struct kvm_vcpu*,int) ;

__attribute__((used)) static void kvmppc_fixup_split_real(struct kvm_vcpu *vcpu)
{
 ulong msr = kvmppc_get_msr(vcpu);
 ulong pc = kvmppc_get_pc(vcpu);


 if ((msr & (MSR_IR|MSR_DR)) != MSR_DR)
  return;


 if (vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK)
  return;


 if (pc & SPLIT_HACK_MASK)
  return;

 vcpu->arch.hflags |= BOOK3S_HFLAG_SPLIT_HACK;
 kvmppc_set_pc(vcpu, pc | SPLIT_HACK_OFFS);
}
