#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rDspSettings; } ;
typedef  TYPE_1__ THINKPAD_BD_DATA ;
typedef  int /*<<< orphan*/  DSP_3780I_CONFIG_SETTINGS ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TRACE_TP3780I ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(THINKPAD_BD_DATA * pBDData)
{
	int retval = 0;
	DSP_3780I_CONFIG_SETTINGS *pSettings = &pBDData->rDspSettings;

	FUNC0(TRACE_TP3780I, "tp3780i::tp3780I_StartDSP entry pBDData %p\n", pBDData);

	if (FUNC1(pSettings) == 0) {
		// @BUG @TBD EnableSRAM(pBDData);
	} else {
		retval = -EIO;
	}

	FUNC0(TRACE_TP3780I, "tp3780i::tp3780I_StartDSP exit retval %x\n", retval);

	return retval;
}