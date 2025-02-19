
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu_hv_synic {scalar_t__ active; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;


 struct kvm_vcpu* get_vcpu_by_vpidx (struct kvm*,int ) ;
 struct kvm_vcpu_hv_synic* vcpu_to_synic (struct kvm_vcpu*) ;

__attribute__((used)) static struct kvm_vcpu_hv_synic *synic_get(struct kvm *kvm, u32 vpidx)
{
 struct kvm_vcpu *vcpu;
 struct kvm_vcpu_hv_synic *synic;

 vcpu = get_vcpu_by_vpidx(kvm, vpidx);
 if (!vcpu)
  return ((void*)0);
 synic = vcpu_to_synic(vcpu);
 return (synic->active) ? synic : ((void*)0);
}
