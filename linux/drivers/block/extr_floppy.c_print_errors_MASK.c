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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ST0 ; 
 int ST0_ECE ; 
 int ST1 ; 
 int ST1_CRC ; 
 int ST1_MAM ; 
 int ST1_ND ; 
 int ST2 ; 
 int ST2_BC ; 
 int ST2_CRC ; 
 int ST2_MAM ; 
 int ST2_WC ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  probing ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC0("");
	if (ST0 & ST0_ECE) {
		FUNC1("Recalibrate failed!");
	} else if (ST2 & ST2_CRC) {
		FUNC1("data CRC error");
		FUNC2();
	} else if (ST1 & ST1_CRC) {
		FUNC1("CRC error");
		FUNC2();
	} else if ((ST1 & (ST1_MAM | ST1_ND)) ||
		   (ST2 & ST2_MAM)) {
		if (!probing) {
			FUNC1("sector not found");
			FUNC2();
		} else
			FUNC1("probe failed...");
	} else if (ST2 & ST2_WC) {	/* seek error */
		FUNC1("wrong cylinder");
	} else if (ST2 & ST2_BC) {	/* cylinder marked as bad */
		FUNC1("bad cylinder");
	} else {
		FUNC1("unknown error. ST[0..2] are: 0x%x 0x%x 0x%x",
			ST0, ST1, ST2);
		FUNC2();
	}
	FUNC1("\n");
}