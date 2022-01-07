
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct kvm_vcpu {int dummy; } ;


 int GUEST_INTR_STATUS ;
 int vmcs_read16 (int ) ;
 int vmcs_write16 (int ,int) ;

__attribute__((used)) static void vmx_hwapic_isr_update(struct kvm_vcpu *vcpu, int max_isr)
{
 u16 status;
 u8 old;

 if (max_isr == -1)
  max_isr = 0;

 status = vmcs_read16(GUEST_INTR_STATUS);
 old = status >> 8;
 if (max_isr != old) {
  status &= 0xff;
  status |= max_isr << 8;
  vmcs_write16(GUEST_INTR_STATUS, status);
 }
}
