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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,unsigned int) ; 

int FUNC9(int node, uint64_t *dram_map, int nentries)
{
	uint64_t bridgebase, base, lim;
	uint32_t val;
	unsigned int barreg, limreg, xlatreg;
	int i, n, rv;

	/* Look only at mapping on Node 0, we don't handle crazy configs */
	bridgebase = FUNC7(0);
	rv = 0;
	for (i = 0; i < 8; i++) {
		if (rv + 1 >= nentries)
			break;
		if (FUNC6()) {
			barreg = FUNC0(i);
			limreg = FUNC1(i);
			xlatreg = FUNC2(i);
		} else {
			barreg = FUNC3(i);
			limreg = FUNC4(i);
			xlatreg = FUNC5(i);
		}
		if (node >= 0) {
			/* node specified, get node mapping of BAR */
			val = FUNC8(bridgebase, xlatreg);
			n = (val >> 1) & 0x3;
			if (n != node)
				continue;
		}
		val = FUNC8(bridgebase, barreg);
		val = (val >>  12) & 0xfffff;
		base = (uint64_t) val << 20;
		val = FUNC8(bridgebase, limreg);
		val = (val >>  12) & 0xfffff;
		if (val == 0)   /* BAR not used */
			continue;
		lim = ((uint64_t)val + 1) << 20;
		dram_map[rv] = base;
		dram_map[rv + 1] = lim;
		rv += 2;
	}
	return rv;
}