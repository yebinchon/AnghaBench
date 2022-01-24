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
struct TYPE_6__ {unsigned short usDspBaseIO; } ;
struct TYPE_5__ {int ClockControl; int SoftReset; int ConfigMode; scalar_t__ Reserved; } ;
typedef  TYPE_1__ DSP_ISA_SLAVE_CONTROL ;
typedef  TYPE_2__ DSP_3780I_CONFIG_SETTINGS ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_IsaSlaveControl ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRACE_3780I ; 
 int /*<<< orphan*/  dsp_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(DSP_3780I_CONFIG_SETTINGS * pSettings)
{
	unsigned long flags;
	unsigned short usDspBaseIO = pSettings->usDspBaseIO;
	DSP_ISA_SLAVE_CONTROL rSlaveControl;


	FUNC2(TRACE_3780I, "3780i::dsp3780i_DisableDSP entry\n");

	rSlaveControl.ClockControl = 0;
	rSlaveControl.SoftReset = true;
	rSlaveControl.ConfigMode = false;
	rSlaveControl.Reserved = 0;
	FUNC3(&dsp_lock, flags);
	FUNC1(DSP_IsaSlaveControl, FUNC0(rSlaveControl));

	FUNC5(5);

	rSlaveControl.ClockControl = 1;
	FUNC1(DSP_IsaSlaveControl, FUNC0(rSlaveControl));
	FUNC4(&dsp_lock, flags);

	FUNC5(5);


	FUNC2(TRACE_3780I, "3780i::dsp3780i_DisableDSP exit\n");

	return 0;
}