#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int usDspBaseIO; int bInterruptClaimed; int /*<<< orphan*/  usDspIrq; } ;
struct TYPE_4__ {TYPE_2__ rDspSettings; } ;
typedef  TYPE_1__ THINKPAD_BD_DATA ;
typedef  TYPE_2__ DSP_3780I_CONFIG_SETTINGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TRACE_TP3780I ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

int FUNC3(THINKPAD_BD_DATA * pBDData)
{
	int retval = 0;
	DSP_3780I_CONFIG_SETTINGS *pSettings = &pBDData->rDspSettings;

	FUNC0(TRACE_TP3780I,
		"tp3780i::tp3780I_ReleaseResources entry pBDData %p\n", pBDData);

	FUNC2(pSettings->usDspBaseIO & (~3), 16);

	if (pSettings->bInterruptClaimed) {
		FUNC1(pSettings->usDspIrq, NULL);
		pSettings->bInterruptClaimed = false;
	}

	FUNC0(TRACE_TP3780I,
		"tp3780i::tp3780I_ReleaseResources exit retval %x\n", retval);

	return retval;
}