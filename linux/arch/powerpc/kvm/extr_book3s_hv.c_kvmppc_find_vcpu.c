
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;


 struct kvm_vcpu* kvm_get_vcpu_by_id (struct kvm*,int) ;

__attribute__((used)) static struct kvm_vcpu *kvmppc_find_vcpu(struct kvm *kvm, int id)
{
 return kvm_get_vcpu_by_id(kvm, id);
}
