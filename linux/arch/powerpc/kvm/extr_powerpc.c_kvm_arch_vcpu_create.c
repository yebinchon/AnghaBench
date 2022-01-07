
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * wqp; } ;
struct kvm_vcpu {int wq; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 int IS_ERR (struct kvm_vcpu*) ;
 struct kvm_vcpu* kvmppc_core_vcpu_create (struct kvm*,unsigned int) ;
 int kvmppc_create_vcpu_debugfs (struct kvm_vcpu*,unsigned int) ;

struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
{
 struct kvm_vcpu *vcpu;
 vcpu = kvmppc_core_vcpu_create(kvm, id);
 if (!IS_ERR(vcpu)) {
  vcpu->arch.wqp = &vcpu->wq;
  kvmppc_create_vcpu_debugfs(vcpu, id);
 }
 return vcpu;
}
