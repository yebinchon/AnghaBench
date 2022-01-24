#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct vmcs12 {unsigned int exception_bitmap; int /*<<< orphan*/  vmwrite_bitmap; int /*<<< orphan*/  vmread_bitmap; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_apf_reason; } ;
struct TYPE_7__ {TYPE_2__ apf; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;
struct TYPE_5__ {scalar_t__ nested_run_pending; } ;
struct vcpu_vmx {TYPE_4__ vcpu; int /*<<< orphan*/  idt_vectoring_info; int /*<<< orphan*/  fail; TYPE_1__ nested; } ;
struct kvm_vcpu {int guest_debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_BASED_HLT_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_INVLPG_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_MONITOR_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_MONITOR_TRAP_FLAG ; 
 int /*<<< orphan*/  CPU_BASED_MOV_DR_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_MWAIT_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_PAUSE_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_RDPMC_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_RDTSC_EXITING ; 
 int /*<<< orphan*/  CPU_BASED_TPR_SHADOW ; 
 int /*<<< orphan*/  CPU_BASED_VIRTUAL_INTR_PENDING ; 
 int /*<<< orphan*/  CPU_BASED_VIRTUAL_NMI_PENDING ; 
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
#define  EXIT_REASON_APIC_ACCESS 184 
#define  EXIT_REASON_APIC_WRITE 183 
#define  EXIT_REASON_CPUID 182 
#define  EXIT_REASON_CR_ACCESS 181 
#define  EXIT_REASON_DR_ACCESS 180 
#define  EXIT_REASON_ENCLS 179 
#define  EXIT_REASON_EOI_INDUCED 178 
#define  EXIT_REASON_EPT_MISCONFIG 177 
#define  EXIT_REASON_EPT_VIOLATION 176 
#define  EXIT_REASON_EXCEPTION_NMI 175 
#define  EXIT_REASON_EXTERNAL_INTERRUPT 174 
#define  EXIT_REASON_GDTR_IDTR 173 
#define  EXIT_REASON_HLT 172 
#define  EXIT_REASON_INVALID_STATE 171 
#define  EXIT_REASON_INVD 170 
#define  EXIT_REASON_INVEPT 169 
#define  EXIT_REASON_INVLPG 168 
#define  EXIT_REASON_INVPCID 167 
#define  EXIT_REASON_INVVPID 166 
#define  EXIT_REASON_IO_INSTRUCTION 165 
#define  EXIT_REASON_LDTR_TR 164 
#define  EXIT_REASON_MCE_DURING_VMENTRY 163 
#define  EXIT_REASON_MONITOR_INSTRUCTION 162 
#define  EXIT_REASON_MONITOR_TRAP_FLAG 161 
#define  EXIT_REASON_MSR_READ 160 
#define  EXIT_REASON_MSR_WRITE 159 
#define  EXIT_REASON_MWAIT_INSTRUCTION 158 
#define  EXIT_REASON_NMI_WINDOW 157 
#define  EXIT_REASON_PAUSE_INSTRUCTION 156 
#define  EXIT_REASON_PENDING_INTERRUPT 155 
#define  EXIT_REASON_PML_FULL 154 
#define  EXIT_REASON_PREEMPTION_TIMER 153 
#define  EXIT_REASON_RDPMC 152 
#define  EXIT_REASON_RDRAND 151 
#define  EXIT_REASON_RDSEED 150 
#define  EXIT_REASON_RDTSC 149 
#define  EXIT_REASON_RDTSCP 148 
#define  EXIT_REASON_TASK_SWITCH 147 
#define  EXIT_REASON_TPAUSE 146 
#define  EXIT_REASON_TPR_BELOW_THRESHOLD 145 
#define  EXIT_REASON_TRIPLE_FAULT 144 
#define  EXIT_REASON_UMWAIT 143 
#define  EXIT_REASON_VMCALL 142 
#define  EXIT_REASON_VMCLEAR 141 
#define  EXIT_REASON_VMFUNC 140 
#define  EXIT_REASON_VMLAUNCH 139 
#define  EXIT_REASON_VMOFF 138 
#define  EXIT_REASON_VMON 137 
#define  EXIT_REASON_VMPTRLD 136 
#define  EXIT_REASON_VMPTRST 135 
#define  EXIT_REASON_VMREAD 134 
#define  EXIT_REASON_VMRESUME 133 
#define  EXIT_REASON_VMWRITE 132 
#define  EXIT_REASON_WBINVD 131 
#define  EXIT_REASON_XRSTORS 130 
#define  EXIT_REASON_XSAVES 129 
#define  EXIT_REASON_XSETBV 128 
 unsigned int INTR_INFO_VECTOR_MASK ; 
 int KVM_GUESTDBG_SINGLESTEP ; 
 int KVM_GUESTDBG_USE_HW_BP ; 
 int KVM_GUESTDBG_USE_SW_BP ; 
 int /*<<< orphan*/  KVM_ISA_VMX ; 
 int /*<<< orphan*/  SECONDARY_EXEC_DESC ; 
 int /*<<< orphan*/  SECONDARY_EXEC_ENABLE_INVPCID ; 
 int /*<<< orphan*/  SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE ; 
 int /*<<< orphan*/  SECONDARY_EXEC_PAUSE_LOOP_EXITING ; 
 int /*<<< orphan*/  SECONDARY_EXEC_RDRAND_EXITING ; 
 int /*<<< orphan*/  SECONDARY_EXEC_RDSEED_EXITING ; 
 int /*<<< orphan*/  SECONDARY_EXEC_WBINVD_EXITING ; 
 int /*<<< orphan*/  SECONDARY_EXEC_XSAVES ; 
 int /*<<< orphan*/  VM_EXIT_INTR_ERROR_CODE ; 
 int /*<<< orphan*/  VM_EXIT_INTR_INFO ; 
 int /*<<< orphan*/  VM_INSTRUCTION_ERROR ; 
 int /*<<< orphan*/  enable_ept ; 
 struct vmcs12* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vmcs12*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*,struct vmcs12*) ; 
 int FUNC10 (struct kvm_vcpu*,struct vmcs12*) ; 
 int FUNC11 (struct kvm_vcpu*,struct vmcs12*,unsigned int) ; 
 int FUNC12 (struct kvm_vcpu*,struct vmcs12*,int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

bool FUNC19(struct kvm_vcpu *vcpu, u32 exit_reason)
{
	u32 intr_info = FUNC17(VM_EXIT_INTR_INFO);
	struct vcpu_vmx *vmx = FUNC13(vcpu);
	struct vmcs12 *vmcs12 = FUNC0(vcpu);

	if (vmx->nested.nested_run_pending)
		return false;

	if (FUNC16(vmx->fail)) {
		FUNC14(
			"hardware VM-instruction error: ",
			FUNC17(VM_INSTRUCTION_ERROR));
		return true;
	}

	/*
	 * The host physical addresses of some pages of guest memory
	 * are loaded into the vmcs02 (e.g. vmcs12's Virtual APIC
	 * Page). The CPU may write to these pages via their host
	 * physical address while L2 is running, bypassing any
	 * address-translation-based dirty tracking (e.g. EPT write
	 * protection).
	 *
	 * Mark them dirty on every exit from L2 to prevent them from
	 * getting out of sync with dirty tracking.
	 */
	FUNC8(vcpu);

	FUNC15(FUNC5(vcpu), exit_reason,
				FUNC18(EXIT_QUALIFICATION),
				vmx->idt_vectoring_info,
				intr_info,
				FUNC17(VM_EXIT_INTR_ERROR_CODE),
				KVM_ISA_VMX);

	switch (exit_reason) {
	case EXIT_REASON_EXCEPTION_NMI:
		if (FUNC3(intr_info))
			return false;
		else if (FUNC4(intr_info))
			return !vmx->vcpu.arch.apf.host_apf_reason && enable_ept;
		else if (FUNC2(intr_info) &&
			 vcpu->guest_debug &
			 (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))
			return false;
		else if (FUNC1(intr_info) &&
			 vcpu->guest_debug & KVM_GUESTDBG_USE_SW_BP)
			return false;
		return vmcs12->exception_bitmap &
				(1u << (intr_info & INTR_INFO_VECTOR_MASK));
	case EXIT_REASON_EXTERNAL_INTERRUPT:
		return false;
	case EXIT_REASON_TRIPLE_FAULT:
		return true;
	case EXIT_REASON_PENDING_INTERRUPT:
		return FUNC6(vmcs12, CPU_BASED_VIRTUAL_INTR_PENDING);
	case EXIT_REASON_NMI_WINDOW:
		return FUNC6(vmcs12, CPU_BASED_VIRTUAL_NMI_PENDING);
	case EXIT_REASON_TASK_SWITCH:
		return true;
	case EXIT_REASON_CPUID:
		return true;
	case EXIT_REASON_HLT:
		return FUNC6(vmcs12, CPU_BASED_HLT_EXITING);
	case EXIT_REASON_INVD:
		return true;
	case EXIT_REASON_INVLPG:
		return FUNC6(vmcs12, CPU_BASED_INVLPG_EXITING);
	case EXIT_REASON_RDPMC:
		return FUNC6(vmcs12, CPU_BASED_RDPMC_EXITING);
	case EXIT_REASON_RDRAND:
		return FUNC7(vmcs12, SECONDARY_EXEC_RDRAND_EXITING);
	case EXIT_REASON_RDSEED:
		return FUNC7(vmcs12, SECONDARY_EXEC_RDSEED_EXITING);
	case EXIT_REASON_RDTSC: case EXIT_REASON_RDTSCP:
		return FUNC6(vmcs12, CPU_BASED_RDTSC_EXITING);
	case EXIT_REASON_VMREAD:
		return FUNC12(vcpu, vmcs12,
			vmcs12->vmread_bitmap);
	case EXIT_REASON_VMWRITE:
		return FUNC12(vcpu, vmcs12,
			vmcs12->vmwrite_bitmap);
	case EXIT_REASON_VMCALL: case EXIT_REASON_VMCLEAR:
	case EXIT_REASON_VMLAUNCH: case EXIT_REASON_VMPTRLD:
	case EXIT_REASON_VMPTRST: case EXIT_REASON_VMRESUME:
	case EXIT_REASON_VMOFF: case EXIT_REASON_VMON:
	case EXIT_REASON_INVEPT: case EXIT_REASON_INVVPID:
		/*
		 * VMX instructions trap unconditionally. This allows L1 to
		 * emulate them for its L2 guest, i.e., allows 3-level nesting!
		 */
		return true;
	case EXIT_REASON_CR_ACCESS:
		return FUNC9(vcpu, vmcs12);
	case EXIT_REASON_DR_ACCESS:
		return FUNC6(vmcs12, CPU_BASED_MOV_DR_EXITING);
	case EXIT_REASON_IO_INSTRUCTION:
		return FUNC10(vcpu, vmcs12);
	case EXIT_REASON_GDTR_IDTR: case EXIT_REASON_LDTR_TR:
		return FUNC7(vmcs12, SECONDARY_EXEC_DESC);
	case EXIT_REASON_MSR_READ:
	case EXIT_REASON_MSR_WRITE:
		return FUNC11(vcpu, vmcs12, exit_reason);
	case EXIT_REASON_INVALID_STATE:
		return true;
	case EXIT_REASON_MWAIT_INSTRUCTION:
		return FUNC6(vmcs12, CPU_BASED_MWAIT_EXITING);
	case EXIT_REASON_MONITOR_TRAP_FLAG:
		return FUNC6(vmcs12, CPU_BASED_MONITOR_TRAP_FLAG);
	case EXIT_REASON_MONITOR_INSTRUCTION:
		return FUNC6(vmcs12, CPU_BASED_MONITOR_EXITING);
	case EXIT_REASON_PAUSE_INSTRUCTION:
		return FUNC6(vmcs12, CPU_BASED_PAUSE_EXITING) ||
			FUNC7(vmcs12,
				SECONDARY_EXEC_PAUSE_LOOP_EXITING);
	case EXIT_REASON_MCE_DURING_VMENTRY:
		return false;
	case EXIT_REASON_TPR_BELOW_THRESHOLD:
		return FUNC6(vmcs12, CPU_BASED_TPR_SHADOW);
	case EXIT_REASON_APIC_ACCESS:
	case EXIT_REASON_APIC_WRITE:
	case EXIT_REASON_EOI_INDUCED:
		/*
		 * The controls for "virtualize APIC accesses," "APIC-
		 * register virtualization," and "virtual-interrupt
		 * delivery" only come from vmcs12.
		 */
		return true;
	case EXIT_REASON_EPT_VIOLATION:
		/*
		 * L0 always deals with the EPT violation. If nested EPT is
		 * used, and the nested mmu code discovers that the address is
		 * missing in the guest EPT table (EPT12), the EPT violation
		 * will be injected with nested_ept_inject_page_fault()
		 */
		return false;
	case EXIT_REASON_EPT_MISCONFIG:
		/*
		 * L2 never uses directly L1's EPT, but rather L0's own EPT
		 * table (shadow on EPT) or a merged EPT table that L0 built
		 * (EPT on EPT). So any problems with the structure of the
		 * table is L0's fault.
		 */
		return false;
	case EXIT_REASON_INVPCID:
		return
			FUNC7(vmcs12, SECONDARY_EXEC_ENABLE_INVPCID) &&
			FUNC6(vmcs12, CPU_BASED_INVLPG_EXITING);
	case EXIT_REASON_WBINVD:
		return FUNC7(vmcs12, SECONDARY_EXEC_WBINVD_EXITING);
	case EXIT_REASON_XSETBV:
		return true;
	case EXIT_REASON_XSAVES: case EXIT_REASON_XRSTORS:
		/*
		 * This should never happen, since it is not possible to
		 * set XSS to a non-zero value---neither in L1 nor in L2.
		 * If if it were, XSS would have to be checked against
		 * the XSS exit bitmap in vmcs12.
		 */
		return FUNC7(vmcs12, SECONDARY_EXEC_XSAVES);
	case EXIT_REASON_PREEMPTION_TIMER:
		return false;
	case EXIT_REASON_PML_FULL:
		/* We emulate PML support to L1. */
		return false;
	case EXIT_REASON_VMFUNC:
		/* VM functions are emulated through L2->L0 vmexits. */
		return false;
	case EXIT_REASON_ENCLS:
		/* SGX is never exposed to L1 */
		return false;
	case EXIT_REASON_UMWAIT:
	case EXIT_REASON_TPAUSE:
		return FUNC7(vmcs12,
			SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE);
	default:
		return true;
	}
}