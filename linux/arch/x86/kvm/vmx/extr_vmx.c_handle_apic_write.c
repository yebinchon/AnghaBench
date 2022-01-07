
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct kvm_vcpu {int dummy; } ;


 int EXIT_QUALIFICATION ;
 int kvm_apic_write_nodecode (struct kvm_vcpu*,unsigned long) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_apic_write(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 u32 offset = exit_qualification & 0xfff;


 kvm_apic_write_nodecode(vcpu, offset);
 return 1;
}
