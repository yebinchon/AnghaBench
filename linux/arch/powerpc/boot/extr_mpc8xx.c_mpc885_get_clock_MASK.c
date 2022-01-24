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
 size_t MPC8XX_PLPRCR ; 
 int* FUNC0 () ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

u32 FUNC3(u32 crystal)
{
	u32 *immr;
	u32 plprcr;
	int mfi, mfn, mfd, pdf;
	u32 ret;

	immr = FUNC0();
	if (!immr) {
		FUNC2("mpc885_get_clock: Couldn't get IMMR base.\r\n");
		return 0;
	}

	plprcr = FUNC1(&immr[MPC8XX_PLPRCR]);

	mfi = (plprcr >> 16) & 15;
	if (mfi < 5) {
		FUNC2("Warning: PLPRCR[MFI] value of %d out-of-bounds\r\n",
		       mfi);
		mfi = 5;
	}

	pdf = (plprcr >> 1) & 0xf;
	mfd = (plprcr >> 22) & 0x1f;
	mfn = (plprcr >> 27) & 0x1f;

	ret = crystal * mfi;

	if (mfn != 0)
		ret += crystal * mfn / (mfd + 1);

	return ret / (pdf + 1);
}