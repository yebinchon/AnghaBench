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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct nlm_soc_info {unsigned int coremask; int /*<<< orphan*/  sysbase; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_9XX_DEVCFG6 ; 
 int NLM_NR_NODES ; 
 int NLM_THREADS_PER_CORE ; 
 int PRID_IMP_MASK ; 
#define  PRID_IMP_NETLOGIC_XLP2XX 132 
#define  PRID_IMP_NETLOGIC_XLP3XX 131 
#define  PRID_IMP_NETLOGIC_XLP5XX 130 
#define  PRID_IMP_NETLOGIC_XLP8XX 129 
#define  PRID_IMP_NETLOGIC_XLP9XX 128 
 int /*<<< orphan*/  SYS_EFUSE_DEVICE_CFG_STATUS0 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct nlm_soc_info* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC16(const cpumask_t *wakeup_mask)
{
	struct nlm_soc_info *nodep;
	uint64_t syspcibase, fusebase;
	uint32_t syscoremask, mask, fusemask;
	int core, n, cpu, ncores;

	for (n = 0; n < NLM_NR_NODES; n++) {
		if (n != 0) {
			/* check if node exists and is online */
			if (FUNC0()) {
				int b = FUNC14(n);
				FUNC11("Node %d SoC PCI bus %d.\n", n, b);
				if (b == 0)
					break;
			} else {
				syspcibase = FUNC6(n);
				if (FUNC8(syspcibase, 0) == 0xffffffff)
					break;
			}
			FUNC7(n);
		}

		/* read cores in reset from SYS */
		nodep = FUNC5(n);

		if (FUNC0()) {
			fusebase = FUNC4(n);
			fusemask = FUNC8(fusebase, FUSE_9XX_DEVCFG6);
			switch (FUNC12() & PRID_IMP_MASK) {
			case PRID_IMP_NETLOGIC_XLP5XX:
				mask = 0xff;
				break;
			case PRID_IMP_NETLOGIC_XLP9XX:
			default:
				mask = 0xfffff;
				break;
			}
		} else {
			fusemask = FUNC9(nodep->sysbase,
						SYS_EFUSE_DEVICE_CFG_STATUS0);
			switch (FUNC12() & PRID_IMP_MASK) {
			case PRID_IMP_NETLOGIC_XLP3XX:
				mask = 0xf;
				break;
			case PRID_IMP_NETLOGIC_XLP2XX:
				mask = 0x3;
				break;
			case PRID_IMP_NETLOGIC_XLP8XX:
			default:
				mask = 0xff;
				break;
			}
		}

		/*
		 * Fused out cores are set in the fusemask, and the remaining
		 * cores are renumbered to range 0 .. nactive-1
		 */
		syscoremask = (1 << FUNC2(~fusemask & mask)) - 1;

		FUNC11("Node %d - SYS/FUSE coremask %x\n", n, syscoremask);
		ncores = FUNC3();
		for (core = 0; core < ncores; core++) {
			/* we will be on node 0 core 0 */
			if (n == 0 && core == 0)
				continue;

			/* see if the core exists */
			if ((syscoremask & (1 << core)) == 0)
				continue;

			/* see if at least the first hw thread is enabled */
			cpu = (n * ncores + core) * NLM_THREADS_PER_CORE;
			if (!FUNC1(cpu, wakeup_mask))
				continue;

			/* wake up the core */
			if (!FUNC15(nodep->sysbase, n, core))
				continue;

			/* core is up */
			nodep->coremask |= 1u << core;

			/* spin until the hw threads sets their ready */
			if (!FUNC13(cpu, 0))
				FUNC10("Node %d : timeout core %d\n", n, core);
		}
	}
}