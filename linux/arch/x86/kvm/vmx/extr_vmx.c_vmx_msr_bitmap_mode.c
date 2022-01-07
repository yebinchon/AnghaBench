
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_vcpu {int dummy; } ;


 int MSR_BITMAP_MODE_X2APIC ;
 int MSR_BITMAP_MODE_X2APIC_APICV ;
 int SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE ;
 scalar_t__ cpu_has_secondary_exec_ctrls () ;
 scalar_t__ enable_apicv ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 int secondary_exec_controls_get (int ) ;
 int to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static u8 vmx_msr_bitmap_mode(struct kvm_vcpu *vcpu)
{
 u8 mode = 0;

 if (cpu_has_secondary_exec_ctrls() &&
     (secondary_exec_controls_get(to_vmx(vcpu)) &
      SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE)) {
  mode |= MSR_BITMAP_MODE_X2APIC;
  if (enable_apicv && kvm_vcpu_apicv_active(vcpu))
   mode |= MSR_BITMAP_MODE_X2APIC_APICV;
 }

 return mode;
}
