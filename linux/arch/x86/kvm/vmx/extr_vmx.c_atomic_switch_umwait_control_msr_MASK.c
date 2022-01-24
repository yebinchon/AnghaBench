#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct vcpu_vmx {scalar_t__ msr_ia32_umwait_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_UMWAIT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct vcpu_vmx*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_vmx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_vmx*) ; 

__attribute__((used)) static void FUNC4(struct vcpu_vmx *vmx)
{
	u32 host_umwait_control;

	if (!FUNC3(vmx))
		return;

	host_umwait_control = FUNC2();

	if (vmx->msr_ia32_umwait_control != host_umwait_control)
		FUNC0(vmx, MSR_IA32_UMWAIT_CONTROL,
			vmx->msr_ia32_umwait_control,
			host_umwait_control, false);
	else
		FUNC1(vmx, MSR_IA32_UMWAIT_CONTROL);
}