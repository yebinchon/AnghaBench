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
typedef  unsigned int u64 ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 unsigned long MMCR0_PMC1CE ; 
 unsigned long MMCR0_PMCjCE ; 
 unsigned int FUNC0 (unsigned long) ; 
 unsigned long MMCR1_NESTSEL_SH ; 
 unsigned int MMCR1_PMC1_ADDR_SEL ; 
 unsigned int MMCR1_PMC1_LLA ; 
 unsigned int MMCR1_PMC1_LLA_VALUE ; 
 unsigned long FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned long,unsigned int) ; 
 unsigned long FUNC3 (unsigned int) ; 
 unsigned long MMCRA_SAMPLE_ENABLE ; 
 unsigned long MMCRA_SDAR_DCACHE_MISS ; 
 unsigned long MMCRA_SDAR_ERAT_MISS ; 
 unsigned int PM_BUSEVENT_MSK ; 
 unsigned int PM_BYTE_MSK ; 
 unsigned int PM_BYTE_SH ; 
 unsigned int PM_LLA ; 
 unsigned int PM_LLAV ; 
 unsigned int PM_PMCSEL_MSK ; 
 unsigned int PM_PMC_MSK ; 
 unsigned int PM_PMC_SH ; 
 unsigned int PM_SUBUNIT_MSK ; 
 unsigned int PM_SUBUNIT_SH ; 
 unsigned int PM_UNIT_MSK ; 
 unsigned int PM_UNIT_SH ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(u64 event[], int n_ev,
			   unsigned int hwc[], unsigned long mmcr[], struct perf_event *pevents[])
{
	unsigned long mmcr1 = 0;
	unsigned long mmcra = MMCRA_SDAR_DCACHE_MISS | MMCRA_SDAR_ERAT_MISS;
	int i;
	unsigned int pmc, ev, b, u, s, psel;
	unsigned int ttmset = 0;
	unsigned int pmc_inuse = 0;

	if (n_ev > 6)
		return -1;
	for (i = 0; i < n_ev; ++i) {
		pmc = (event[i] >> PM_PMC_SH) & PM_PMC_MSK;
		if (pmc) {
			if (pmc_inuse & (1 << (pmc - 1)))
				return -1;	/* collision! */
			pmc_inuse |= 1 << (pmc - 1);
		}
	}
	for (i = 0; i < n_ev; ++i) {
		ev = event[i];
		pmc = (ev >> PM_PMC_SH) & PM_PMC_MSK;
		if (pmc) {
			--pmc;
		} else {
			/* can go on any PMC; find a free one */
			for (pmc = 0; pmc < 4; ++pmc)
				if (!(pmc_inuse & (1 << pmc)))
					break;
			if (pmc >= 4)
				return -1;
			pmc_inuse |= 1 << pmc;
		}
		hwc[i] = pmc;
		psel = ev & PM_PMCSEL_MSK;
		if (ev & PM_BUSEVENT_MSK) {
			/* this event uses the event bus */
			b = (ev >> PM_BYTE_SH) & PM_BYTE_MSK;
			u = (ev >> PM_UNIT_SH) & PM_UNIT_MSK;
			/* check for conflict on this byte of event bus */
			if ((ttmset & (1 << b)) && FUNC2(mmcr1, b) != u)
				return -1;
			mmcr1 |= (unsigned long)u << FUNC3(b);
			ttmset |= 1 << b;
			if (u == 5) {
				/* Nest events have a further mux */
				s = (ev >> PM_SUBUNIT_SH) & PM_SUBUNIT_MSK;
				if ((ttmset & 0x10) &&
				    FUNC0(mmcr1) != s)
					return -1;
				ttmset |= 0x10;
				mmcr1 |= (unsigned long)s << MMCR1_NESTSEL_SH;
			}
			if (0x30 <= psel && psel <= 0x3d) {
				/* these need the PMCx_ADDR_SEL bits */
				if (b >= 2)
					mmcr1 |= MMCR1_PMC1_ADDR_SEL >> pmc;
			}
			/* bus select values are different for PMC3/4 */
			if (pmc >= 2 && (psel & 0x90) == 0x80)
				psel ^= 0x20;
		}
		if (ev & PM_LLA) {
			mmcr1 |= MMCR1_PMC1_LLA >> pmc;
			if (ev & PM_LLAV)
				mmcr1 |= MMCR1_PMC1_LLA_VALUE >> pmc;
		}
		if (FUNC4(event[i]))
			mmcra |= MMCRA_SAMPLE_ENABLE;
		if (pmc < 4)
			mmcr1 |= (unsigned long)psel << FUNC1(pmc);
	}
	mmcr[0] = 0;
	if (pmc_inuse & 1)
		mmcr[0] = MMCR0_PMC1CE;
	if (pmc_inuse & 0xe)
		mmcr[0] |= MMCR0_PMCjCE;
	mmcr[1] = mmcr1;
	mmcr[2] = mmcra;
	return 0;
}