#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int bInterruptClaimed; int /*<<< orphan*/  usDspIrq; } ;
struct TYPE_5__ {int bDSPEnabled; TYPE_2__ rDspSettings; } ;
typedef  TYPE_1__ THINKPAD_BD_DATA ;
typedef  TYPE_2__ DSP_3780I_CONFIG_SETTINGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TRACE_TP3780I ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(THINKPAD_BD_DATA * pBDData)
{
	int retval = 0;
	DSP_3780I_CONFIG_SETTINGS *pSettings = &pBDData->rDspSettings;

	FUNC0(TRACE_TP3780I, "tp3780i::tp3780I_DisableDSP entry pBDData %p\n", pBDData);

	if (pBDData->bDSPEnabled) {
		FUNC1(&pBDData->rDspSettings);
		if (pSettings->bInterruptClaimed) {
			FUNC2(pSettings->usDspIrq, NULL);
			pSettings->bInterruptClaimed = false;
		}
		FUNC3(false);
		pBDData->bDSPEnabled = false;
	}

	FUNC0(TRACE_TP3780I, "tp3780i::tp3780I_DisableDSP exit retval %x\n", retval);

	return retval;
}