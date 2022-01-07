
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int change_vmcs01_virtual_apic_mode; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;






 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ;
 int SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE ;
 int WARN_ONCE (int,char*) ;
 scalar_t__ cpu_has_vmx_virtualize_x2apic_mode () ;
 scalar_t__ flexpriority_enabled ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int kvm_get_apic_mode (struct kvm_vcpu*) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;
 int secondary_exec_controls_get (struct vcpu_vmx*) ;
 int secondary_exec_controls_set (struct vcpu_vmx*,int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_flush_tlb (struct kvm_vcpu*,int) ;
 int vmx_update_msr_bitmap (struct kvm_vcpu*) ;

void vmx_set_virtual_apic_mode(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 u32 sec_exec_control;

 if (!lapic_in_kernel(vcpu))
  return;

 if (!flexpriority_enabled &&
     !cpu_has_vmx_virtualize_x2apic_mode())
  return;


 if (is_guest_mode(vcpu)) {
  vmx->nested.change_vmcs01_virtual_apic_mode = 1;
  return;
 }

 sec_exec_control = secondary_exec_controls_get(vmx);
 sec_exec_control &= ~(SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES |
         SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE);

 switch (kvm_get_apic_mode(vcpu)) {
 case 130:
  WARN_ONCE(1, "Invalid local APIC state");
 case 131:
  break;
 case 128:
  if (flexpriority_enabled) {
   sec_exec_control |=
    SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES;
   vmx_flush_tlb(vcpu, 1);
  }
  break;
 case 129:
  if (cpu_has_vmx_virtualize_x2apic_mode())
   sec_exec_control |=
    SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE;
  break;
 }
 secondary_exec_controls_set(vmx, sec_exec_control);

 vmx_update_msr_bitmap(vcpu);
}
