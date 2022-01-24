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
 int /*<<< orphan*/  MSR_IA32_VMX_EPT_VPID_CAP ; 
 int /*<<< orphan*/  MSR_IA32_VMX_PROCBASED_CTLS ; 
 int /*<<< orphan*/  MSR_IA32_VMX_PROCBASED_CTLS2 ; 
 int /*<<< orphan*/  X86_FEATURE_EPT ; 
 int /*<<< orphan*/  X86_FEATURE_EPT_AD ; 
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
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int x86_VMX_FEATURE_EPT_CAP_AD ; 

__attribute__((used)) static void FUNC3(struct cpuinfo_x86 *c)
{
	/* Intel VMX MSR indicated features */
#define X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW	0x00200000
#define X86_VMX_FEATURE_PROC_CTLS_VNMI		0x00400000
#define X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS	0x80000000
#define X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC	0x00000001
#define X86_VMX_FEATURE_PROC_CTLS2_EPT		0x00000002
#define X86_VMX_FEATURE_PROC_CTLS2_VPID		0x00000020
#define x86_VMX_FEATURE_EPT_CAP_AD		0x00200000

	u32 vmx_msr_low, vmx_msr_high, msr_ctl, msr_ctl2;
	u32 msr_vpid_cap, msr_ept_cap;

	FUNC0(c, X86_FEATURE_TPR_SHADOW);
	FUNC0(c, X86_FEATURE_VNMI);
	FUNC0(c, X86_FEATURE_FLEXPRIORITY);
	FUNC0(c, X86_FEATURE_EPT);
	FUNC0(c, X86_FEATURE_VPID);
	FUNC0(c, X86_FEATURE_EPT_AD);

	FUNC1(MSR_IA32_VMX_PROCBASED_CTLS, vmx_msr_low, vmx_msr_high);
	msr_ctl = vmx_msr_high | vmx_msr_low;
	if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW)
		FUNC2(c, X86_FEATURE_TPR_SHADOW);
	if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_VNMI)
		FUNC2(c, X86_FEATURE_VNMI);
	if (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_2ND_CTLS) {
		FUNC1(MSR_IA32_VMX_PROCBASED_CTLS2,
		      vmx_msr_low, vmx_msr_high);
		msr_ctl2 = vmx_msr_high | vmx_msr_low;
		if ((msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_VIRT_APIC) &&
		    (msr_ctl & X86_VMX_FEATURE_PROC_CTLS_TPR_SHADOW))
			FUNC2(c, X86_FEATURE_FLEXPRIORITY);
		if (msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_EPT) {
			FUNC2(c, X86_FEATURE_EPT);
			FUNC1(MSR_IA32_VMX_EPT_VPID_CAP,
			      msr_ept_cap, msr_vpid_cap);
			if (msr_ept_cap & x86_VMX_FEATURE_EPT_CAP_AD)
				FUNC2(c, X86_FEATURE_EPT_AD);
		}
		if (msr_ctl2 & X86_VMX_FEATURE_PROC_CTLS2_VPID)
			FUNC2(c, X86_FEATURE_VPID);
	}
}