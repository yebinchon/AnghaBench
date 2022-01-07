
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {void* hva; } ;
struct TYPE_5__ {int pi_pending; TYPE_3__* pi_desc; TYPE_1__ virtual_apic_map; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {scalar_t__ pir; } ;


 int GUEST_INTR_STATUS ;
 int __kvm_apic_update_irr (scalar_t__,void*,int*) ;
 int find_last_bit (unsigned long*,int) ;
 int nested_mark_vmcs12_pages_dirty (struct kvm_vcpu*) ;
 int pi_test_and_clear_on (TYPE_3__*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read16 (int ) ;
 int vmcs_write16 (int ,int) ;

__attribute__((used)) static void vmx_complete_nested_posted_interrupt(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int max_irr;
 void *vapic_page;
 u16 status;

 if (!vmx->nested.pi_desc || !vmx->nested.pi_pending)
  return;

 vmx->nested.pi_pending = 0;
 if (!pi_test_and_clear_on(vmx->nested.pi_desc))
  return;

 max_irr = find_last_bit((unsigned long *)vmx->nested.pi_desc->pir, 256);
 if (max_irr != 256) {
  vapic_page = vmx->nested.virtual_apic_map.hva;
  if (!vapic_page)
   return;

  __kvm_apic_update_irr(vmx->nested.pi_desc->pir,
   vapic_page, &max_irr);
  status = vmcs_read16(GUEST_INTR_STATUS);
  if ((u8)max_irr > ((u8)status & 0xff)) {
   status &= ~0xff;
   status |= (u8)max_irr;
   vmcs_write16(GUEST_INTR_STATUS, status);
  }
 }

 nested_mark_vmcs12_pages_dirty(vcpu);
}
