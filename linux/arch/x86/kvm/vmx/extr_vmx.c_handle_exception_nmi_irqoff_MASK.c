#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  host_apf_reason; } ;
struct TYPE_6__ {TYPE_1__ apf; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;
struct vcpu_vmx {TYPE_3__ vcpu; int /*<<< orphan*/  exit_intr_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_EXIT_INTR_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct vcpu_vmx *vmx)
{
	vmx->exit_intr_info = FUNC7(VM_EXIT_INTR_INFO);

	/* if exit due to PF check for async PF */
	if (FUNC2(vmx->exit_intr_info))
		vmx->vcpu.arch.apf.host_apf_reason = FUNC6();

	/* Handle machine checks before interrupts are enabled */
	if (FUNC0(vmx->exit_intr_info))
		FUNC5();

	/* We need to handle NMIs before interrupts are enabled */
	if (FUNC1(vmx->exit_intr_info)) {
		FUNC4(&vmx->vcpu);
		asm("int $2");
		FUNC3(&vmx->vcpu);
	}
}