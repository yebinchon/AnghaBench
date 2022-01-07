
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int EXIT_QUALIFICATION ;
 int kvm_apic_set_eoi_accelerated (struct kvm_vcpu*,int) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_apic_eoi_induced(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 int vector = exit_qualification & 0xff;


 kvm_apic_set_eoi_accelerated(vcpu, vector);
 return 1;
}
