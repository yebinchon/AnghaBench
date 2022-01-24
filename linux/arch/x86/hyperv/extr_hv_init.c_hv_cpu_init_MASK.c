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
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct hv_vp_assist_page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  HV_X64_MSR_VP_ASSIST_PAGE ; 
 scalar_t__ HV_X64_MSR_VP_ASSIST_PAGE_ADDRESS_SHIFT ; 
 scalar_t__ HV_X64_MSR_VP_ASSIST_PAGE_ENABLE ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_ZERO ; 
 struct hv_vp_assist_page* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ hv_max_vp_index ; 
 struct hv_vp_assist_page** hv_vp_assist_page ; 
 scalar_t__* hv_vp_index ; 
 int /*<<< orphan*/  hyperv_pcpu_input_arg ; 
 void* FUNC3 (struct page*) ; 
 size_t FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct hv_vp_assist_page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(unsigned int cpu)
{
	u64 msr_vp_index;
	struct hv_vp_assist_page **hvp = &hv_vp_assist_page[FUNC4()];
	void **input_arg;
	struct page *pg;

	input_arg = (void **)FUNC5(hyperv_pcpu_input_arg);
	pg = FUNC1(GFP_KERNEL);
	if (FUNC6(!pg))
		return -ENOMEM;
	*input_arg = FUNC3(pg);

	FUNC2(msr_vp_index);

	hv_vp_index[FUNC4()] = msr_vp_index;

	if (msr_vp_index > hv_max_vp_index)
		hv_max_vp_index = msr_vp_index;

	if (!hv_vp_assist_page)
		return 0;

	/*
	 * The VP ASSIST PAGE is an "overlay" page (see Hyper-V TLFS's Section
	 * 5.2.1 "GPA Overlay Pages"). Here it must be zeroed out to make sure
	 * we always write the EOI MSR in hv_apic_eoi_write() *after* the
	 * EOI optimization is disabled in hv_cpu_die(), otherwise a CPU may
	 * not be stopped in the case of CPU offlining and the VM will hang.
	 */
	if (!*hvp) {
		*hvp = FUNC0(PAGE_SIZE, GFP_KERNEL | __GFP_ZERO,
				 PAGE_KERNEL);
	}

	if (*hvp) {
		u64 val;

		val = FUNC7(*hvp);
		val = (val << HV_X64_MSR_VP_ASSIST_PAGE_ADDRESS_SHIFT) |
			HV_X64_MSR_VP_ASSIST_PAGE_ENABLE;

		FUNC8(HV_X64_MSR_VP_ASSIST_PAGE, val);
	}

	return 0;
}