
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BOOK3S_HFLAG_SPLIT_HACK ;
 int SPLIT_HACK_MASK ;
 int SPLIT_HACK_OFFS ;
 int kvmppc_get_lr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_set_lr (struct kvm_vcpu*,int) ;
 int kvmppc_set_pc (struct kvm_vcpu*,int) ;

void kvmppc_unfixup_split_real(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK) {
  ulong pc = kvmppc_get_pc(vcpu);
  ulong lr = kvmppc_get_lr(vcpu);
  if ((pc & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS)
   kvmppc_set_pc(vcpu, pc & ~SPLIT_HACK_MASK);
  if ((lr & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS)
   kvmppc_set_lr(vcpu, lr & ~SPLIT_HACK_MASK);
  vcpu->arch.hflags &= ~BOOK3S_HFLAG_SPLIT_HACK;
 }
}
