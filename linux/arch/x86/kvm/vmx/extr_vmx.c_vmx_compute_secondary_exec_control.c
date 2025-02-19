
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int secondary_ctls_high; } ;
struct TYPE_5__ {TYPE_1__ msrs; } ;
struct kvm_vcpu {int kvm; } ;
struct vcpu_vmx {scalar_t__ vpid; int secondary_exec_control; TYPE_2__ nested; struct kvm_vcpu vcpu; } ;
struct TYPE_6__ {int cpu_based_2nd_exec_ctrl; } ;


 scalar_t__ PT_MODE_SYSTEM ;
 int SECONDARY_EXEC_APIC_REGISTER_VIRT ;
 int SECONDARY_EXEC_DESC ;
 int SECONDARY_EXEC_ENABLE_EPT ;
 int SECONDARY_EXEC_ENABLE_INVPCID ;
 int SECONDARY_EXEC_ENABLE_PML ;
 int SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE ;
 int SECONDARY_EXEC_ENABLE_VPID ;
 int SECONDARY_EXEC_PAUSE_LOOP_EXITING ;
 int SECONDARY_EXEC_PT_CONCEAL_VMX ;
 int SECONDARY_EXEC_PT_USE_GPA ;
 int SECONDARY_EXEC_RDRAND_EXITING ;
 int SECONDARY_EXEC_RDSEED_EXITING ;
 int SECONDARY_EXEC_RDTSCP ;
 int SECONDARY_EXEC_SHADOW_VMCS ;
 int SECONDARY_EXEC_UNRESTRICTED_GUEST ;
 int SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES ;
 int SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE ;
 int SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY ;
 int SECONDARY_EXEC_XSAVES ;
 int X86_FEATURE_INVPCID ;
 int X86_FEATURE_PCID ;
 int X86_FEATURE_RDRAND ;
 int X86_FEATURE_RDSEED ;
 int X86_FEATURE_RDTSCP ;
 int X86_FEATURE_WAITPKG ;
 int X86_FEATURE_XSAVE ;
 int X86_FEATURE_XSAVES ;
 int cpu_need_virtualize_apic_accesses (struct kvm_vcpu*) ;
 int enable_ept ;
 int enable_pml ;
 scalar_t__ enable_unrestricted_guest ;
 int guest_cpuid_clear (struct kvm_vcpu*,int ) ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_pause_in_guest (int ) ;
 int kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 scalar_t__ nested ;
 scalar_t__ pt_mode ;
 TYPE_3__ vmcs_config ;
 scalar_t__ vmx_invpcid_supported () ;
 scalar_t__ vmx_rdrand_supported () ;
 scalar_t__ vmx_rdseed_supported () ;
 scalar_t__ vmx_rdtscp_supported () ;
 scalar_t__ vmx_waitpkg_supported () ;
 scalar_t__ vmx_xsaves_supported () ;

__attribute__((used)) static void vmx_compute_secondary_exec_control(struct vcpu_vmx *vmx)
{
 struct kvm_vcpu *vcpu = &vmx->vcpu;

 u32 exec_control = vmcs_config.cpu_based_2nd_exec_ctrl;

 if (pt_mode == PT_MODE_SYSTEM)
  exec_control &= ~(SECONDARY_EXEC_PT_USE_GPA | SECONDARY_EXEC_PT_CONCEAL_VMX);
 if (!cpu_need_virtualize_apic_accesses(vcpu))
  exec_control &= ~SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES;
 if (vmx->vpid == 0)
  exec_control &= ~SECONDARY_EXEC_ENABLE_VPID;
 if (!enable_ept) {
  exec_control &= ~SECONDARY_EXEC_ENABLE_EPT;
  enable_unrestricted_guest = 0;
 }
 if (!enable_unrestricted_guest)
  exec_control &= ~SECONDARY_EXEC_UNRESTRICTED_GUEST;
 if (kvm_pause_in_guest(vmx->vcpu.kvm))
  exec_control &= ~SECONDARY_EXEC_PAUSE_LOOP_EXITING;
 if (!kvm_vcpu_apicv_active(vcpu))
  exec_control &= ~(SECONDARY_EXEC_APIC_REGISTER_VIRT |
      SECONDARY_EXEC_VIRTUAL_INTR_DELIVERY);
 exec_control &= ~SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE;



 exec_control &= ~SECONDARY_EXEC_DESC;






 exec_control &= ~SECONDARY_EXEC_SHADOW_VMCS;

 if (!enable_pml)
  exec_control &= ~SECONDARY_EXEC_ENABLE_PML;

 if (vmx_xsaves_supported()) {

  bool xsaves_enabled =
   guest_cpuid_has(vcpu, X86_FEATURE_XSAVE) &&
   guest_cpuid_has(vcpu, X86_FEATURE_XSAVES);

  if (!xsaves_enabled)
   exec_control &= ~SECONDARY_EXEC_XSAVES;

  if (nested) {
   if (xsaves_enabled)
    vmx->nested.msrs.secondary_ctls_high |=
     SECONDARY_EXEC_XSAVES;
   else
    vmx->nested.msrs.secondary_ctls_high &=
     ~SECONDARY_EXEC_XSAVES;
  }
 }

 if (vmx_rdtscp_supported()) {
  bool rdtscp_enabled = guest_cpuid_has(vcpu, X86_FEATURE_RDTSCP);
  if (!rdtscp_enabled)
   exec_control &= ~SECONDARY_EXEC_RDTSCP;

  if (nested) {
   if (rdtscp_enabled)
    vmx->nested.msrs.secondary_ctls_high |=
     SECONDARY_EXEC_RDTSCP;
   else
    vmx->nested.msrs.secondary_ctls_high &=
     ~SECONDARY_EXEC_RDTSCP;
  }
 }

 if (vmx_invpcid_supported()) {

  bool invpcid_enabled =
   guest_cpuid_has(vcpu, X86_FEATURE_INVPCID) &&
   guest_cpuid_has(vcpu, X86_FEATURE_PCID);

  if (!invpcid_enabled) {
   exec_control &= ~SECONDARY_EXEC_ENABLE_INVPCID;
   guest_cpuid_clear(vcpu, X86_FEATURE_INVPCID);
  }

  if (nested) {
   if (invpcid_enabled)
    vmx->nested.msrs.secondary_ctls_high |=
     SECONDARY_EXEC_ENABLE_INVPCID;
   else
    vmx->nested.msrs.secondary_ctls_high &=
     ~SECONDARY_EXEC_ENABLE_INVPCID;
  }
 }

 if (vmx_rdrand_supported()) {
  bool rdrand_enabled = guest_cpuid_has(vcpu, X86_FEATURE_RDRAND);
  if (rdrand_enabled)
   exec_control &= ~SECONDARY_EXEC_RDRAND_EXITING;

  if (nested) {
   if (rdrand_enabled)
    vmx->nested.msrs.secondary_ctls_high |=
     SECONDARY_EXEC_RDRAND_EXITING;
   else
    vmx->nested.msrs.secondary_ctls_high &=
     ~SECONDARY_EXEC_RDRAND_EXITING;
  }
 }

 if (vmx_rdseed_supported()) {
  bool rdseed_enabled = guest_cpuid_has(vcpu, X86_FEATURE_RDSEED);
  if (rdseed_enabled)
   exec_control &= ~SECONDARY_EXEC_RDSEED_EXITING;

  if (nested) {
   if (rdseed_enabled)
    vmx->nested.msrs.secondary_ctls_high |=
     SECONDARY_EXEC_RDSEED_EXITING;
   else
    vmx->nested.msrs.secondary_ctls_high &=
     ~SECONDARY_EXEC_RDSEED_EXITING;
  }
 }

 if (vmx_waitpkg_supported()) {
  bool waitpkg_enabled =
   guest_cpuid_has(vcpu, X86_FEATURE_WAITPKG);

  if (!waitpkg_enabled)
   exec_control &= ~SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE;

  if (nested) {
   if (waitpkg_enabled)
    vmx->nested.msrs.secondary_ctls_high |=
     SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE;
   else
    vmx->nested.msrs.secondary_ctls_high &=
     ~SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE;
  }
 }

 vmx->secondary_exec_control = exec_control;
}
