#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int efer; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;
struct vcpu_vmx {int save_nmsrs; int guest_msrs_ready; TYPE_2__ vcpu; } ;

/* Variables and functions */
 int EFER_SCE ; 
 int /*<<< orphan*/  MSR_EFER ; 
 int /*<<< orphan*/  MSR_LSTAR ; 
 int /*<<< orphan*/  MSR_STAR ; 
 int /*<<< orphan*/  MSR_SYSCALL_MASK ; 
 int /*<<< orphan*/  MSR_TSC_AUX ; 
 int /*<<< orphan*/  X86_FEATURE_RDTSCP ; 
 int FUNC0 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_vmx*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vcpu_vmx*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct vcpu_vmx *vmx)
{
	int save_nmsrs, index;

	save_nmsrs = 0;
#ifdef CONFIG_X86_64
	/*
	 * The SYSCALL MSRs are only needed on long mode guests, and only
	 * when EFER.SCE is set.
	 */
	if (is_long_mode(&vmx->vcpu) && (vmx->vcpu.arch.efer & EFER_SCE)) {
		index = __find_msr_index(vmx, MSR_STAR);
		if (index >= 0)
			move_msr_up(vmx, index, save_nmsrs++);
		index = __find_msr_index(vmx, MSR_LSTAR);
		if (index >= 0)
			move_msr_up(vmx, index, save_nmsrs++);
		index = __find_msr_index(vmx, MSR_SYSCALL_MASK);
		if (index >= 0)
			move_msr_up(vmx, index, save_nmsrs++);
	}
#endif
	index = FUNC0(vmx, MSR_EFER);
	if (index >= 0 && FUNC5(vmx, index))
		FUNC4(vmx, index, save_nmsrs++);
	index = FUNC0(vmx, MSR_TSC_AUX);
	if (index >= 0 && FUNC2(&vmx->vcpu, X86_FEATURE_RDTSCP))
		FUNC4(vmx, index, save_nmsrs++);

	vmx->save_nmsrs = save_nmsrs;
	vmx->guest_msrs_ready = false;

	if (FUNC1())
		FUNC6(&vmx->vcpu);
}