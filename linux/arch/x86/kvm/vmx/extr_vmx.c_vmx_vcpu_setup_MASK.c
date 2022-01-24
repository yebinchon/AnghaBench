#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_18__ {int output_mask; } ;
struct TYPE_20__ {TYPE_7__ guest; } ;
struct TYPE_17__ {unsigned long long pat; int /*<<< orphan*/  cr0_guest_owned_bits; } ;
struct TYPE_11__ {TYPE_6__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_14__ {int /*<<< orphan*/ * val; } ;
struct TYPE_13__ {int /*<<< orphan*/ * val; } ;
struct TYPE_15__ {TYPE_3__ guest; TYPE_2__ host; } ;
struct TYPE_12__ {int /*<<< orphan*/ * msr_bitmap; } ;
struct vcpu_vmx {int hv_deadline_tsc; int ple_window_dirty; int nmsrs; TYPE_9__ pt_desc; int /*<<< orphan*/  pml_pg; TYPE_10__ vcpu; TYPE_5__* guest_msrs; TYPE_4__ msr_autoload; int /*<<< orphan*/  ple_window; int /*<<< orphan*/  pi_desc; int /*<<< orphan*/  secondary_exec_control; TYPE_1__ vmcs01; } ;
struct TYPE_19__ {int vmentry_ctrl; } ;
struct TYPE_16__ {int index; unsigned long long mask; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CR0_GUEST_HOST_MASK ; 
 int /*<<< orphan*/  CR3_TARGET_COUNT ; 
 int /*<<< orphan*/  ENCLS_EXITING_BITMAP ; 
 int /*<<< orphan*/  EOI_EXIT_BITMAP0 ; 
 int /*<<< orphan*/  EOI_EXIT_BITMAP1 ; 
 int /*<<< orphan*/  EOI_EXIT_BITMAP2 ; 
 int /*<<< orphan*/  EOI_EXIT_BITMAP3 ; 
 int /*<<< orphan*/  GUEST_IA32_PAT ; 
 int /*<<< orphan*/  GUEST_IA32_RTIT_CTL ; 
 int /*<<< orphan*/  GUEST_INTR_STATUS ; 
 int /*<<< orphan*/  GUEST_PML_INDEX ; 
 int /*<<< orphan*/  HOST_FS_BASE ; 
 int /*<<< orphan*/  HOST_FS_SELECTOR ; 
 int /*<<< orphan*/  HOST_GS_BASE ; 
 int /*<<< orphan*/  HOST_GS_SELECTOR ; 
 int /*<<< orphan*/  MSR_BITMAP ; 
 int /*<<< orphan*/  PAGE_FAULT_ERROR_CODE_MASK ; 
 int /*<<< orphan*/  PAGE_FAULT_ERROR_CODE_MATCH ; 
 int /*<<< orphan*/  PLE_GAP ; 
 int /*<<< orphan*/  PML_ADDRESS ; 
 scalar_t__ PML_ENTITY_NUM ; 
 int /*<<< orphan*/  POSTED_INTR_DESC_ADDR ; 
 int /*<<< orphan*/  POSTED_INTR_NV ; 
 scalar_t__ POSTED_INTR_VECTOR ; 
 scalar_t__ PT_MODE_HOST_GUEST ; 
 int /*<<< orphan*/  VMCS_LINK_POINTER ; 
 unsigned long long VMX_XSS_EXIT_BITMAP ; 
 int VM_ENTRY_LOAD_IA32_PAT ; 
 int /*<<< orphan*/  VM_ENTRY_MSR_LOAD_ADDR ; 
 int /*<<< orphan*/  VM_ENTRY_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VM_EXIT_MSR_LOAD_ADDR ; 
 int /*<<< orphan*/  VM_EXIT_MSR_LOAD_COUNT ; 
 int /*<<< orphan*/  VM_EXIT_MSR_STORE_COUNT ; 
 int /*<<< orphan*/  VM_FUNCTION_CONTROL ; 
 int /*<<< orphan*/  X86_CR0_TS ; 
 int /*<<< orphan*/  XSS_EXIT_BITMAP ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ enable_pml ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nested ; 
 int /*<<< orphan*/  FUNC10 () ; 
 unsigned long long FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ple_gap ; 
 int /*<<< orphan*/  ple_window ; 
 scalar_t__ pt_mode ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC16 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 TYPE_8__ vmcs_config ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC23 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/ * vmx_msr_index ; 
 int /*<<< orphan*/  FUNC24 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC25 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ FUNC28 () ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC30(struct vcpu_vmx *vmx)
{
	int i;

	if (nested)
		FUNC10();

	if (FUNC4())
		FUNC20(MSR_BITMAP, FUNC1(vmx->vmcs01.msr_bitmap));

	FUNC20(VMCS_LINK_POINTER, -1ull); /* 22.3.1.5 */

	/* Control */
	FUNC12(vmx, FUNC24(vmx));
	vmx->hv_deadline_tsc = -1;

	FUNC6(vmx, FUNC23(vmx));

	if (FUNC2()) {
		FUNC22(vmx);
		FUNC14(vmx, vmx->secondary_exec_control);
	}

	if (FUNC8(&vmx->vcpu)) {
		FUNC20(EOI_EXIT_BITMAP0, 0);
		FUNC20(EOI_EXIT_BITMAP1, 0);
		FUNC20(EOI_EXIT_BITMAP2, 0);
		FUNC20(EOI_EXIT_BITMAP3, 0);

		FUNC18(GUEST_INTR_STATUS, 0);

		FUNC18(POSTED_INTR_NV, POSTED_INTR_VECTOR);
		FUNC20(POSTED_INTR_DESC_ADDR, FUNC1((&vmx->pi_desc)));
	}

	if (!FUNC7(vmx->vcpu.kvm)) {
		FUNC19(PLE_GAP, ple_gap);
		vmx->ple_window = ple_window;
		vmx->ple_window_dirty = true;
	}

	FUNC19(PAGE_FAULT_ERROR_CODE_MASK, 0);
	FUNC19(PAGE_FAULT_ERROR_CODE_MATCH, 0);
	FUNC19(CR3_TARGET_COUNT, 0);           /* 22.2.1 */

	FUNC18(HOST_FS_SELECTOR, 0);            /* 22.2.4 */
	FUNC18(HOST_GS_SELECTOR, 0);            /* 22.2.4 */
	FUNC25(vmx);
	FUNC21(HOST_FS_BASE, 0); /* 22.2.4 */
	FUNC21(HOST_GS_BASE, 0); /* 22.2.4 */

	if (FUNC5())
		FUNC20(VM_FUNCTION_CONTROL, 0);

	FUNC19(VM_EXIT_MSR_STORE_COUNT, 0);
	FUNC19(VM_EXIT_MSR_LOAD_COUNT, 0);
	FUNC20(VM_EXIT_MSR_LOAD_ADDR, FUNC1(vmx->msr_autoload.host.val));
	FUNC19(VM_ENTRY_MSR_LOAD_COUNT, 0);
	FUNC20(VM_ENTRY_MSR_LOAD_ADDR, FUNC1(vmx->msr_autoload.guest.val));

	if (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_PAT)
		FUNC20(GUEST_IA32_PAT, vmx->vcpu.arch.pat);

	for (i = 0; i < FUNC0(vmx_msr_index); ++i) {
		u32 index = vmx_msr_index[i];
		u32 data_low, data_high;
		int j = vmx->nmsrs;

		if (FUNC13(index, &data_low, &data_high) < 0)
			continue;
		if (FUNC29(index, data_low, data_high) < 0)
			continue;
		vmx->guest_msrs[j].index = i;
		vmx->guest_msrs[j].data = 0;
		vmx->guest_msrs[j].mask = -1ull;
		++vmx->nmsrs;
	}

	FUNC17(vmx, FUNC27());

	/* 22.2.1, 20.8.1 */
	FUNC16(vmx, FUNC26());

	vmx->vcpu.arch.cr0_guest_owned_bits = X86_CR0_TS;
	FUNC21(CR0_GUEST_HOST_MASK, ~X86_CR0_TS);

	FUNC15(vmx);

	if (FUNC28())
		FUNC20(XSS_EXIT_BITMAP, VMX_XSS_EXIT_BITMAP);

	if (enable_pml) {
		FUNC20(PML_ADDRESS, FUNC11(vmx->pml_pg));
		FUNC18(GUEST_PML_INDEX, PML_ENTITY_NUM - 1);
	}

	if (FUNC3())
		FUNC20(ENCLS_EXITING_BITMAP, -1ull);

	if (pt_mode == PT_MODE_HOST_GUEST) {
		FUNC9(&vmx->pt_desc, 0, sizeof(vmx->pt_desc));
		/* Bit[6~0] are forced to 1, writes are ignored. */
		vmx->pt_desc.guest.output_mask = 0x7F;
		FUNC20(GUEST_IA32_RTIT_CTL, 0);
	}
}