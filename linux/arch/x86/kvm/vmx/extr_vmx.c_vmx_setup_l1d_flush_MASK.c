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
typedef  int u64 ;
struct page {int dummy; } ;
typedef  enum vmx_l1d_flush_state { ____Placeholder_vmx_l1d_flush_state } vmx_l1d_flush_state ;

/* Variables and functions */
 int ARCH_CAP_SKIP_VMENTRY_L1DFLUSH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int L1D_CACHE_ORDER ; 
#define  L1TF_MITIGATION_FLUSH 133 
#define  L1TF_MITIGATION_FLUSH_NOSMT 132 
#define  L1TF_MITIGATION_FLUSH_NOWARN 131 
#define  L1TF_MITIGATION_FULL 130 
#define  L1TF_MITIGATION_FULL_FORCE 129 
#define  L1TF_MITIGATION_OFF 128 
 int /*<<< orphan*/  MSR_IA32_ARCH_CAPABILITIES ; 
 unsigned int PAGE_SIZE ; 
 int VMENTER_L1D_FLUSH_ALWAYS ; 
 int VMENTER_L1D_FLUSH_AUTO ; 
 int VMENTER_L1D_FLUSH_COND ; 
 int VMENTER_L1D_FLUSH_EPT_DISABLED ; 
 int VMENTER_L1D_FLUSH_NEVER ; 
 int VMENTER_L1D_FLUSH_NOT_REQUIRED ; 
 int /*<<< orphan*/  X86_BUG_L1TF ; 
 int /*<<< orphan*/  X86_FEATURE_ARCH_CAPABILITIES ; 
 int /*<<< orphan*/  X86_FEATURE_FLUSH_L1D ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_ept ; 
 int l1tf_mitigation ; 
 int l1tf_vmx_mitigation ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmx_l1d_flush_cond ; 
 scalar_t__ vmx_l1d_flush_pages ; 
 int /*<<< orphan*/  vmx_l1d_should_flush ; 

__attribute__((used)) static int FUNC8(enum vmx_l1d_flush_state l1tf)
{
	struct page *page;
	unsigned int i;

	if (!FUNC2(X86_BUG_L1TF)) {
		l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_NOT_REQUIRED;
		return 0;
	}

	if (!enable_ept) {
		l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_EPT_DISABLED;
		return 0;
	}

	if (FUNC1(X86_FEATURE_ARCH_CAPABILITIES)) {
		u64 msr;

		FUNC5(MSR_IA32_ARCH_CAPABILITIES, msr);
		if (msr & ARCH_CAP_SKIP_VMENTRY_L1DFLUSH) {
			l1tf_vmx_mitigation = VMENTER_L1D_FLUSH_NOT_REQUIRED;
			return 0;
		}
	}

	/* If set to auto use the default l1tf mitigation method */
	if (l1tf == VMENTER_L1D_FLUSH_AUTO) {
		switch (l1tf_mitigation) {
		case L1TF_MITIGATION_OFF:
			l1tf = VMENTER_L1D_FLUSH_NEVER;
			break;
		case L1TF_MITIGATION_FLUSH_NOWARN:
		case L1TF_MITIGATION_FLUSH:
		case L1TF_MITIGATION_FLUSH_NOSMT:
			l1tf = VMENTER_L1D_FLUSH_COND;
			break;
		case L1TF_MITIGATION_FULL:
		case L1TF_MITIGATION_FULL_FORCE:
			l1tf = VMENTER_L1D_FLUSH_ALWAYS;
			break;
		}
	} else if (l1tf_mitigation == L1TF_MITIGATION_FULL_FORCE) {
		l1tf = VMENTER_L1D_FLUSH_ALWAYS;
	}

	if (l1tf != VMENTER_L1D_FLUSH_NEVER && !vmx_l1d_flush_pages &&
	    !FUNC1(X86_FEATURE_FLUSH_L1D)) {
		/*
		 * This allocation for vmx_l1d_flush_pages is not tied to a VM
		 * lifetime and so should not be charged to a memcg.
		 */
		page = FUNC0(GFP_KERNEL, L1D_CACHE_ORDER);
		if (!page)
			return -ENOMEM;
		vmx_l1d_flush_pages = FUNC4(page);

		/*
		 * Initialize each page with a different pattern in
		 * order to protect against KSM in the nested
		 * virtualization case.
		 */
		for (i = 0; i < 1u << L1D_CACHE_ORDER; ++i) {
			FUNC3(vmx_l1d_flush_pages + i * PAGE_SIZE, i + 1,
			       PAGE_SIZE);
		}
	}

	l1tf_vmx_mitigation = l1tf;

	if (l1tf != VMENTER_L1D_FLUSH_NEVER)
		FUNC7(&vmx_l1d_should_flush);
	else
		FUNC6(&vmx_l1d_should_flush);

	if (l1tf == VMENTER_L1D_FLUSH_COND)
		FUNC7(&vmx_l1d_flush_cond);
	else
		FUNC6(&vmx_l1d_flush_cond);
	return 0;
}