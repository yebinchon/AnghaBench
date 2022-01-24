#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ dtl_enable_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_SPLPAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int FUNC4 () ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(int crash_shutdown, int secondary)
{
	/*
	 * Don't risk a hypervisor call if we're crashing
	 * XXX: Why? The hypervisor is not crashing. It might be better
	 * to at least attempt unregister to avoid the hypervisor stepping
	 * on our memory.
	 */
	if (FUNC0(FW_FEATURE_SPLPAR) && !crash_shutdown) {
		int ret;
		int cpu = FUNC4();
		int hwcpu = FUNC2();

		if (FUNC1()->dtl_enable_mask) {
			ret = FUNC5(hwcpu);
			if (ret) {
				FUNC3("WARNING: DTL deregistration for cpu "
				       "%d (hw %d) failed with %d\n",
				       cpu, hwcpu, ret);
			}
		}

		ret = FUNC6(hwcpu);
		if (ret) {
			FUNC3("WARNING: SLB shadow buffer deregistration "
			       "for cpu %d (hw %d) failed with %d\n",
			       cpu, hwcpu, ret);
		}

		ret = FUNC7(hwcpu);
		if (ret) {
			FUNC3("WARNING: VPA deregistration for cpu %d "
			       "(hw %d) failed with %d\n", cpu, hwcpu, ret);
		}
	}

	if (FUNC9()) {
		FUNC11();

		if (!secondary)
			FUNC10();
	} else
		FUNC8(secondary);
}