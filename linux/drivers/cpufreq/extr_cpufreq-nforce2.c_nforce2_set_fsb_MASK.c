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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NFORCE2_DELAY ; 
 unsigned int NFORCE2_MIN_FSB ; 
 int /*<<< orphan*/  NFORCE2_PLLADR ; 
 int /*<<< orphan*/  NFORCE2_PLLENABLE ; 
 unsigned int max_fsb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int min_fsb ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  nforce2_dev ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(unsigned int fsb)
{
	u32 temp = 0;
	unsigned int tfsb;
	int diff;
	int pll = 0;

	if ((fsb > max_fsb) || (fsb < NFORCE2_MIN_FSB)) {
		FUNC6("FSB %d is out of range!\n", fsb);
		return -EINVAL;
	}

	tfsb = FUNC2(0);
	if (!tfsb) {
		FUNC6("Error while reading the FSB\n");
		return -EINVAL;
	}

	/* First write? Then set actual value */
	FUNC4(nforce2_dev, NFORCE2_PLLENABLE, (u8 *)&temp);
	if (!temp) {
		pll = FUNC1(tfsb);

		if (pll < 0)
			return -EINVAL;

		FUNC3(pll);
	}

	/* Enable write access */
	temp = 0x01;
	FUNC5(nforce2_dev, NFORCE2_PLLENABLE, (u8)temp);

	diff = tfsb - fsb;

	if (!diff)
		return 0;

	while ((tfsb != fsb) && (tfsb <= max_fsb) && (tfsb >= min_fsb)) {
		if (diff < 0)
			tfsb++;
		else
			tfsb--;

		/* Calculate the PLL reg. value */
		pll = FUNC1(tfsb);
		if (pll == -1)
			return -EINVAL;

		FUNC3(pll);
#ifdef NFORCE2_DELAY
		mdelay(NFORCE2_DELAY);
#endif
	}

	temp = 0x40;
	FUNC5(nforce2_dev, NFORCE2_PLLADR, (u8)temp);

	return 0;
}