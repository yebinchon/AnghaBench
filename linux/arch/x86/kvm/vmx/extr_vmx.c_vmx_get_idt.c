
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct desc_ptr {int address; int size; } ;


 int GUEST_IDTR_BASE ;
 int GUEST_IDTR_LIMIT ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static void vmx_get_idt(struct kvm_vcpu *vcpu, struct desc_ptr *dt)
{
 dt->size = vmcs_read32(GUEST_IDTR_LIMIT);
 dt->address = vmcs_readl(GUEST_IDTR_BASE);
}
