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
typedef  int u32 ;
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_VMX_PROCBASED_CTLS ; 
 int /*<<< orphan*/  MSR_IA32_VMX_PROCBASED_CTLS2 ; 
 int /*<<< orphan*/  X86_FEATURE_EPT ; 
 int /*<<< orphan*/  X86_FEATURE_FLEXPRIORITY ; 
 int /*<<< orphan*/  X86_FEATURE_TPR_SHADOW ; 
 int /*<<< orphan*/  X86_FEATURE_VNMI ; 
 int /*<<< orphan*/  X86_FEATURE_VPID ; 
 int X86_VMX_FEATURE_PROC_CTLS2_EPT ; 
 int X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC ; 
 int X86_VMX_FEATURE_PROC_CTLS2_VPID ; 
 int X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS ; 
 int X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW ; 
 int X86_VMX_FEATURE_PROC_CTLS_VNMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpuinfo_x86 *c)
{
	u32 vmx_msr_low, vmx_msr_high, msr_ctl, msr_ctl2;

	FUNC0(MSR_IA32_VMX_PROCBASED_CTLS, vmx_msr_low, vmx_msr_high);
	msr_ctl = vmx_msr_high | vmx_msr_low;

	if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW)
		FUNC1(c, X86_FEATURE_TPR_SHADOW);
	if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_VNMI)
		FUNC1(c, X86_FEATURE_VNMI);
	if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS) {
		FUNC0(MSR_IA32_VMX_PROCBASED_CTLS2,
		      vmx_msr_low, vmx_msr_high);
		msr_ctl2 = vmx_msr_high | vmx_msr_low;
		if ((msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC) &&
		    (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW))
			FUNC1(c, X86_FEATURE_FLEXPRIORITY);
		if (msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_EPT)
			FUNC1(c, X86_FEATURE_EPT);
		if (msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_VPID)
			FUNC1(c, X86_FEATURE_VPID);
	}
}