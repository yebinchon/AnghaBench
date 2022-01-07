
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_2__ {unsigned long l1_ptcr; } ;
struct kvm {TYPE_1__ arch; int srcu; } ;


 long H_PARAMETER ;
 long H_SUCCESS ;
 unsigned long PAGE_SHIFT ;
 unsigned long PRTB_MASK ;
 unsigned long PRTS_MASK ;
 int kvm_is_visible_gfn (struct kvm*,unsigned long) ;
 unsigned long kvmppc_get_gpr (struct kvm_vcpu*,int) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

long kvmhv_set_partition_table(struct kvm_vcpu *vcpu)
{
 struct kvm *kvm = vcpu->kvm;
 unsigned long ptcr = kvmppc_get_gpr(vcpu, 4);
 int srcu_idx;
 long ret = H_SUCCESS;

 srcu_idx = srcu_read_lock(&kvm->srcu);




 if ((ptcr & PRTS_MASK) > 12 - 8 ||
     !kvm_is_visible_gfn(vcpu->kvm, (ptcr & PRTB_MASK) >> PAGE_SHIFT))
  ret = H_PARAMETER;
 srcu_read_unlock(&kvm->srcu, srcu_idx);
 if (ret == H_SUCCESS)
  kvm->arch.l1_ptcr = ptcr;
 return ret;
}
