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
typedef  int /*<<< orphan*/  u64 ;
struct hv_reenlightenment_control {scalar_t__ target_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  HV_X64_MSR_REENLIGHTENMENT_CONTROL ; 
 int /*<<< orphan*/  HV_X64_MSR_VP_ASSIST_PAGE ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/ * hv_reenlightenment_cb ; 
 scalar_t__* hv_vp_assist_page ; 
 scalar_t__* hv_vp_index ; 
 int /*<<< orphan*/  hyperv_pcpu_input_arg ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(unsigned int cpu)
{
	struct hv_reenlightenment_control re_ctrl;
	unsigned int new_cpu;
	unsigned long flags;
	void **input_arg;
	void *input_pg = NULL;

	FUNC3(flags);
	input_arg = (void **)FUNC5(hyperv_pcpu_input_arg);
	input_pg = *input_arg;
	*input_arg = NULL;
	FUNC2(flags);
	FUNC1((unsigned long)input_pg);

	if (hv_vp_assist_page && hv_vp_assist_page[cpu])
		FUNC6(HV_X64_MSR_VP_ASSIST_PAGE, 0);

	if (hv_reenlightenment_cb == NULL)
		return 0;

	FUNC4(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
	if (re_ctrl.target_vp == hv_vp_index[cpu]) {
		/* Reassign to some other online CPU */
		new_cpu = FUNC0(cpu_online_mask, cpu);

		re_ctrl.target_vp = hv_vp_index[new_cpu];
		FUNC6(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *((u64 *)&re_ctrl));
	}

	return 0;
}