
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int EXIT_QUALIFICATION ;
 int VM_EXIT_INTR_INFO ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_get_exit_info(struct kvm_vcpu *vcpu, u64 *info1, u64 *info2)
{
 *info1 = vmcs_readl(EXIT_QUALIFICATION);
 *info2 = vmcs_read32(VM_EXIT_INTR_INFO);
}
