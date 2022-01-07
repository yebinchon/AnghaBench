
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u32 ;
struct vmcs12 {unsigned int exception_bitmap; int vmwrite_bitmap; int vmread_bitmap; } ;
struct TYPE_6__ {int host_apf_reason; } ;
struct TYPE_7__ {TYPE_2__ apf; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;
struct TYPE_5__ {scalar_t__ nested_run_pending; } ;
struct vcpu_vmx {TYPE_4__ vcpu; int idt_vectoring_info; int fail; TYPE_1__ nested; } ;
struct kvm_vcpu {int guest_debug; } ;


 int CPU_BASED_HLT_EXITING ;
 int CPU_BASED_INVLPG_EXITING ;
 int CPU_BASED_MONITOR_EXITING ;
 int CPU_BASED_MONITOR_TRAP_FLAG ;
 int CPU_BASED_MOV_DR_EXITING ;
 int CPU_BASED_MWAIT_EXITING ;
 int CPU_BASED_PAUSE_EXITING ;
 int CPU_BASED_RDPMC_EXITING ;
 int CPU_BASED_RDTSC_EXITING ;
 int CPU_BASED_TPR_SHADOW ;
 int CPU_BASED_VIRTUAL_INTR_PENDING ;
 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int EXIT_QUALIFICATION ;
 unsigned int INTR_INFO_VECTOR_MASK ;
 int KVM_GUESTDBG_SINGLESTEP ;
 int KVM_GUESTDBG_USE_HW_BP ;
 int KVM_GUESTDBG_USE_SW_BP ;
 int KVM_ISA_VMX ;
 int SECONDARY_EXEC_DESC ;
 int SECONDARY_EXEC_ENABLE_INVPCID ;
 int SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE ;
 int SECONDARY_EXEC_PAUSE_LOOP_EXITING ;
 int SECONDARY_EXEC_RDRAND_EXITING ;
 int SECONDARY_EXEC_RDSEED_EXITING ;
 int SECONDARY_EXEC_WBINVD_EXITING ;
 int SECONDARY_EXEC_XSAVES ;
 int VM_EXIT_INTR_ERROR_CODE ;
 int VM_EXIT_INTR_INFO ;
 int VM_INSTRUCTION_ERROR ;
 int enable_ept ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 int is_breakpoint (unsigned int) ;
 int is_debug (unsigned int) ;
 int is_nmi (unsigned int) ;
 int is_page_fault (unsigned int) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 int nested_cpu_has (struct vmcs12*,int ) ;
 int nested_cpu_has2 (struct vmcs12*,int ) ;
 int nested_mark_vmcs12_pages_dirty (struct kvm_vcpu*) ;
 int nested_vmx_exit_handled_cr (struct kvm_vcpu*,struct vmcs12*) ;
 int nested_vmx_exit_handled_io (struct kvm_vcpu*,struct vmcs12*) ;
 int nested_vmx_exit_handled_msr (struct kvm_vcpu*,struct vmcs12*,unsigned int) ;
 int nested_vmx_exit_handled_vmcs_access (struct kvm_vcpu*,struct vmcs12*,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int trace_kvm_nested_vmenter_failed (char*,unsigned int) ;
 int trace_kvm_nested_vmexit (int ,unsigned int,int ,int ,unsigned int,unsigned int,int ) ;
 scalar_t__ unlikely (int ) ;
 unsigned int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

bool nested_vmx_exit_reflected(struct kvm_vcpu *vcpu, u32 exit_reason)
{
 u32 intr_info = vmcs_read32(VM_EXIT_INTR_INFO);
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);

 if (vmx->nested.nested_run_pending)
  return 0;

 if (unlikely(vmx->fail)) {
  trace_kvm_nested_vmenter_failed(
   "hardware VM-instruction error: ",
   vmcs_read32(VM_INSTRUCTION_ERROR));
  return 1;
 }
 nested_mark_vmcs12_pages_dirty(vcpu);

 trace_kvm_nested_vmexit(kvm_rip_read(vcpu), exit_reason,
    vmcs_readl(EXIT_QUALIFICATION),
    vmx->idt_vectoring_info,
    intr_info,
    vmcs_read32(VM_EXIT_INTR_ERROR_CODE),
    KVM_ISA_VMX);

 switch (exit_reason) {
 case 175:
  if (is_nmi(intr_info))
   return 0;
  else if (is_page_fault(intr_info))
   return !vmx->vcpu.arch.apf.host_apf_reason && enable_ept;
  else if (is_debug(intr_info) &&
    vcpu->guest_debug &
    (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))
   return 0;
  else if (is_breakpoint(intr_info) &&
    vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
   return 0;
  return vmcs12->exception_bitmap &
    (1u << (intr_info & INTR_INFO_VECTOR_MASK));
 case 174:
  return 0;
 case 144:
  return 1;
 case 155:
  return nested_cpu_has(vmcs12, CPU_BASED_VIRTUAL_INTR_PENDING);
 case 157:
  return nested_cpu_has(vmcs12, CPU_BASED_VIRTUAL_NMI_PENDING);
 case 147:
  return 1;
 case 182:
  return 1;
 case 172:
  return nested_cpu_has(vmcs12, CPU_BASED_HLT_EXITING);
 case 170:
  return 1;
 case 168:
  return nested_cpu_has(vmcs12, CPU_BASED_INVLPG_EXITING);
 case 152:
  return nested_cpu_has(vmcs12, CPU_BASED_RDPMC_EXITING);
 case 151:
  return nested_cpu_has2(vmcs12, SECONDARY_EXEC_RDRAND_EXITING);
 case 150:
  return nested_cpu_has2(vmcs12, SECONDARY_EXEC_RDSEED_EXITING);
 case 149: case 148:
  return nested_cpu_has(vmcs12, CPU_BASED_RDTSC_EXITING);
 case 134:
  return nested_vmx_exit_handled_vmcs_access(vcpu, vmcs12,
   vmcs12->vmread_bitmap);
 case 132:
  return nested_vmx_exit_handled_vmcs_access(vcpu, vmcs12,
   vmcs12->vmwrite_bitmap);
 case 142: case 141:
 case 139: case 136:
 case 135: case 133:
 case 138: case 137:
 case 169: case 166:




  return 1;
 case 181:
  return nested_vmx_exit_handled_cr(vcpu, vmcs12);
 case 180:
  return nested_cpu_has(vmcs12, CPU_BASED_MOV_DR_EXITING);
 case 165:
  return nested_vmx_exit_handled_io(vcpu, vmcs12);
 case 173: case 164:
  return nested_cpu_has2(vmcs12, SECONDARY_EXEC_DESC);
 case 160:
 case 159:
  return nested_vmx_exit_handled_msr(vcpu, vmcs12, exit_reason);
 case 171:
  return 1;
 case 158:
  return nested_cpu_has(vmcs12, CPU_BASED_MWAIT_EXITING);
 case 161:
  return nested_cpu_has(vmcs12, CPU_BASED_MONITOR_TRAP_FLAG);
 case 162:
  return nested_cpu_has(vmcs12, CPU_BASED_MONITOR_EXITING);
 case 156:
  return nested_cpu_has(vmcs12, CPU_BASED_PAUSE_EXITING) ||
   nested_cpu_has2(vmcs12,
    SECONDARY_EXEC_PAUSE_LOOP_EXITING);
 case 163:
  return 0;
 case 145:
  return nested_cpu_has(vmcs12, CPU_BASED_TPR_SHADOW);
 case 184:
 case 183:
 case 178:





  return 1;
 case 176:






  return 0;
 case 177:






  return 0;
 case 167:
  return
   nested_cpu_has2(vmcs12, SECONDARY_EXEC_ENABLE_INVPCID) &&
   nested_cpu_has(vmcs12, CPU_BASED_INVLPG_EXITING);
 case 131:
  return nested_cpu_has2(vmcs12, SECONDARY_EXEC_WBINVD_EXITING);
 case 128:
  return 1;
 case 129: case 130:






  return nested_cpu_has2(vmcs12, SECONDARY_EXEC_XSAVES);
 case 153:
  return 0;
 case 154:

  return 0;
 case 140:

  return 0;
 case 179:

  return 0;
 case 143:
 case 146:
  return nested_cpu_has2(vmcs12,
   SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE);
 default:
  return 1;
 }
}
