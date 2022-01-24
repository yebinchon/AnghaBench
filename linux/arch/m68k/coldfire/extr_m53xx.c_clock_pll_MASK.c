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
typedef  int u32 ;

/* Variables and functions */
 int BUSDIV ; 
 int /*<<< orphan*/  DEFAULT_LPD ; 
 int FREF ; 
 int MAX_FSYS ; 
 int /*<<< orphan*/  MCF_PLL_PFDR ; 
 int /*<<< orphan*/  MCF_PLL_PODR ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MCF_SDRAMC_LIMP_FIX ; 
 int MCF_SDRAMC_REFRESH ; 
 int /*<<< orphan*/  MCF_SDRAMC_SDCR ; 
 int MCF_SDRAMC_SDCR_CKE ; 
 int MCF_SDRAMC_SDCR_REF ; 
 int MIN_FSYS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(int fsys, int flags)
{
	int fref, temp, fout, mfd;
	u32 i;

	fref = FREF;
        
	if (fsys == 0) {
		/* Return current PLL output */
		mfd = FUNC4(MCF_PLL_PFDR);

		return (fref * mfd / (BUSDIV * 4));
	}

	/* Check bounds of requested system clock */
	if (fsys > MAX_FSYS)
		fsys = MAX_FSYS;
	if (fsys < MIN_FSYS)
		fsys = MIN_FSYS;

	/* Multiplying by 100 when calculating the temp value,
	   and then dividing by 100 to calculate the mfd allows
	   for exact values without needing to include floating
	   point libraries. */
	temp = 100 * fsys / fref;
	mfd = 4 * BUSDIV * temp / 100;
    	    	    	
	/* Determine the output frequency for selected values */
	fout = (fref * mfd / (BUSDIV * 4));

	/*
	 * Check to see if the SDRAM has already been initialized.
	 * If it has then the SDRAM needs to be put into self refresh
	 * mode before reprogramming the PLL.
	 */
	if (FUNC5(MCF_SDRAMC_SDCR) & MCF_SDRAMC_SDCR_REF)
		/* Put SDRAM into self refresh mode */
		FUNC7(FUNC5(MCF_SDRAMC_SDCR) & ~MCF_SDRAMC_SDCR_CKE,
			MCF_SDRAMC_SDCR);

	/*
	 * Initialize the PLL to generate the new system clock frequency.
	 * The device must be put into LIMP mode to reprogram the PLL.
	 */

	/* Enter LIMP mode */
	FUNC3(DEFAULT_LPD);
     					
	/* Reprogram PLL for desired fsys */
	FUNC6(FUNC1(BUSDIV/3) | FUNC0(BUSDIV),
		MCF_PLL_PODR);
						
	FUNC6(mfd, MCF_PLL_PFDR);
		
	/* Exit LIMP mode */
	FUNC2();
	
	/*
	 * Return the SDRAM to normal operation if it is in use.
	 */
	if (FUNC5(MCF_SDRAMC_SDCR) & MCF_SDRAMC_SDCR_REF)
		/* Exit self refresh mode */
		FUNC7(FUNC5(MCF_SDRAMC_SDCR) | MCF_SDRAMC_SDCR_CKE,
			MCF_SDRAMC_SDCR);

	/* Errata - workaround for SDRAM opeartion after exiting LIMP mode */
	FUNC7(MCF_SDRAMC_REFRESH, MCF_SDRAMC_LIMP_FIX);

	/* wait for DQS logic to relock */
	for (i = 0; i < 0x200; i++)
		;

	return fout;
}