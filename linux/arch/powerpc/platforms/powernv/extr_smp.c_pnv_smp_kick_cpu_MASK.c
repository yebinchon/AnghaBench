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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ cpu_start; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FW_FEATURE_OPAL ; 
 long OPAL_SUCCESS ; 
 scalar_t__ OPAL_THREAD_INACTIVE ; 
 scalar_t__ OPAL_THREAD_STARTED ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  generic_secondary_smp_init ; 
 unsigned int FUNC2 (int) ; 
 int nr_cpu_ids ; 
 long FUNC3 (unsigned int,scalar_t__*) ; 
 long FUNC4 (unsigned int,unsigned long) ; 
 TYPE_1__** paca_ptrs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,long,int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(int nr)
{
	unsigned int pcpu;
	unsigned long start_here =
			FUNC0(FUNC5(generic_secondary_smp_init));
	long rc;
	uint8_t status;

	if (nr < 0 || nr >= nr_cpu_ids)
		return -EINVAL;

	pcpu = FUNC2(nr);
	/*
	 * If we already started or OPAL is not supported, we just
	 * kick the CPU via the PACA
	 */
	if (paca_ptrs[nr]->cpu_start || !FUNC1(FW_FEATURE_OPAL))
		goto kick;

	/*
	 * At this point, the CPU can either be spinning on the way in
	 * from kexec or be inside OPAL waiting to be started for the
	 * first time. OPAL v3 allows us to query OPAL to know if it
	 * has the CPUs, so we do that
	 */
	rc = FUNC3(pcpu, &status);
	if (rc != OPAL_SUCCESS) {
		FUNC7("OPAL Error %ld querying CPU %d state\n", rc, nr);
		return -ENODEV;
	}

	/*
	 * Already started, just kick it, probably coming from
	 * kexec and spinning
	 */
	if (status == OPAL_THREAD_STARTED)
		goto kick;

	/*
	 * Available/inactive, let's kick it
	 */
	if (status == OPAL_THREAD_INACTIVE) {
		FUNC6("OPAL: Starting CPU %d (HW 0x%x)...\n", nr, pcpu);
		rc = FUNC4(pcpu, start_here);
		if (rc != OPAL_SUCCESS) {
			FUNC7("OPAL Error %ld starting CPU %d\n", rc, nr);
			return -ENODEV;
		}
	} else {
		/*
		 * An unavailable CPU (or any other unknown status)
		 * shouldn't be started. It should also
		 * not be in the possible map but currently it can
		 * happen
		 */
		FUNC6("OPAL: CPU %d (HW 0x%x) is unavailable"
			 " (status %d)...\n", nr, pcpu, status);
		return -ENODEV;
	}

kick:
	return FUNC8(nr);
}