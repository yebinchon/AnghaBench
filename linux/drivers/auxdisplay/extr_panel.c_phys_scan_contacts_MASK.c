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
typedef  int __u64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int phys_curr ; 
 int phys_prev ; 
 int phys_read ; 
 int phys_read_prev ; 
 int /*<<< orphan*/  pprt ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char scan_mask_i ; 
 char scan_mask_o ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC5(void)
{
	int bit, bitval;
	char oldval;
	char bitmask;
	char gndmask;

	phys_prev = phys_curr;
	phys_read_prev = phys_read;
	phys_read = 0;		/* flush all signals */

	/* keep track of old value, with all outputs disabled */
	oldval = FUNC2(pprt) | scan_mask_o;
	/* activate all keyboard outputs (active low) */
	FUNC4(pprt, oldval & ~scan_mask_o);

	/* will have a 1 for each bit set to gnd */
	bitmask = FUNC1(FUNC3(pprt)) & scan_mask_i;
	/* disable all matrix signals */
	FUNC4(pprt, oldval);

	/* now that all outputs are cleared, the only active input bits are
	 * directly connected to the ground
	 */

	/* 1 for each grounded input */
	gndmask = FUNC1(FUNC3(pprt)) & scan_mask_i;

	/* grounded inputs are signals 40-44 */
	phys_read |= (__u64)gndmask << 40;

	if (bitmask != gndmask) {
		/*
		 * since clearing the outputs changed some inputs, we know
		 * that some input signals are currently tied to some outputs.
		 * So we'll scan them.
		 */
		for (bit = 0; bit < 8; bit++) {
			bitval = FUNC0(bit);

			if (!(scan_mask_o & bitval))	/* skip unused bits */
				continue;

			FUNC4(pprt, oldval & ~bitval);	/* enable this output */
			bitmask = FUNC1(FUNC3(pprt)) & ~gndmask;
			phys_read |= (__u64)bitmask << (5 * bit);
		}
		FUNC4(pprt, oldval);	/* disable all outputs */
	}
	/*
	 * this is easy: use old bits when they are flapping,
	 * use new ones when stable
	 */
	phys_curr = (phys_prev & (phys_read ^ phys_read_prev)) |
		    (phys_read & ~(phys_read ^ phys_read_prev));
}