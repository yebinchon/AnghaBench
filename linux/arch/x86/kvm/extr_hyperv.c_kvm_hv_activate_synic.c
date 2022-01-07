
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu_hv_synic {int active; int dont_zero_synic_pages; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_vcpu_deactivate_apicv (struct kvm_vcpu*) ;
 struct kvm_vcpu_hv_synic* vcpu_to_synic (struct kvm_vcpu*) ;

int kvm_hv_activate_synic(struct kvm_vcpu *vcpu, bool dont_zero_synic_pages)
{
 struct kvm_vcpu_hv_synic *synic = vcpu_to_synic(vcpu);





 kvm_vcpu_deactivate_apicv(vcpu);
 synic->active = 1;
 synic->dont_zero_synic_pages = dont_zero_synic_pages;
 return 0;
}
