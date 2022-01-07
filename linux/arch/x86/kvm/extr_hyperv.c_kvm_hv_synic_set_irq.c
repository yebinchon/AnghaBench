
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu_hv_synic {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 struct kvm_vcpu_hv_synic* synic_get (struct kvm*,int ) ;
 int synic_set_irq (struct kvm_vcpu_hv_synic*,int ) ;

int kvm_hv_synic_set_irq(struct kvm *kvm, u32 vpidx, u32 sint)
{
 struct kvm_vcpu_hv_synic *synic;

 synic = synic_get(kvm, vpidx);
 if (!synic)
  return -EINVAL;

 return synic_set_irq(synic, sint);
}
