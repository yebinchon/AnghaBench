
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_apic_update_ppr (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_tpr_below_threshold(struct kvm_vcpu *vcpu)
{
 kvm_apic_update_ppr(vcpu);
 return 1;
}
