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
typedef  int u32 ;
struct TYPE_2__ {unsigned long n_counter; unsigned long name; int flags; } ;

/* Variables and functions */
 int MAX_HWEVENTS ; 
 int PPMU_ARCH_207S ; 
 int PPMU_HAS_SIER ; 
 int /*<<< orphan*/  SPRN_BESCR ; 
 int /*<<< orphan*/  SPRN_EBBHR ; 
 int /*<<< orphan*/  SPRN_EBBRR ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int /*<<< orphan*/  SPRN_MMCR1 ; 
 int /*<<< orphan*/  SPRN_MMCR2 ; 
 int /*<<< orphan*/  SPRN_MMCRA ; 
 int /*<<< orphan*/  SPRN_SDAR ; 
 int /*<<< orphan*/  SPRN_SIAR ; 
 int /*<<< orphan*/  SPRN_SIER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ppmu ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int) ; 
 unsigned long FUNC5 () ; 

void FUNC6(void)
{
	unsigned long sdar, sier, flags;
	u32 pmcs[MAX_HWEVENTS];
	int i;

	if (!ppmu) {
		FUNC3("Performance monitor hardware not registered.\n");
		return;
	}

	if (!ppmu->n_counter)
		return;

	FUNC1(flags);

	FUNC3("CPU: %d PMU registers, ppmu = %s n_counters = %d",
		 FUNC5(), ppmu->name, ppmu->n_counter);

	for (i = 0; i < ppmu->n_counter; i++)
		pmcs[i] = FUNC4(i + 1);

	for (; i < MAX_HWEVENTS; i++)
		pmcs[i] = 0xdeadbeef;

	FUNC3("PMC1:  %08x PMC2: %08x PMC3: %08x PMC4: %08x\n",
		 pmcs[0], pmcs[1], pmcs[2], pmcs[3]);

	if (ppmu->n_counter > 4)
		FUNC3("PMC5:  %08x PMC6: %08x PMC7: %08x PMC8: %08x\n",
			 pmcs[4], pmcs[5], pmcs[6], pmcs[7]);

	FUNC3("MMCR0: %016lx MMCR1: %016lx MMCRA: %016lx\n",
		FUNC2(SPRN_MMCR0), FUNC2(SPRN_MMCR1), FUNC2(SPRN_MMCRA));

	sdar = sier = 0;
#ifdef CONFIG_PPC64
	sdar = mfspr(SPRN_SDAR);

	if (ppmu->flags & PPMU_HAS_SIER)
		sier = mfspr(SPRN_SIER);

	if (ppmu->flags & PPMU_ARCH_207S) {
		pr_info("MMCR2: %016lx EBBHR: %016lx\n",
			mfspr(SPRN_MMCR2), mfspr(SPRN_EBBHR));
		pr_info("EBBRR: %016lx BESCR: %016lx\n",
			mfspr(SPRN_EBBRR), mfspr(SPRN_BESCR));
	}
#endif
	FUNC3("SIAR:  %016lx SDAR:  %016lx SIER:  %016lx\n",
		FUNC2(SPRN_SIAR), sdar, sier);

	FUNC0(flags);
}