#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int frequency; } ;

/* Variables and functions */
 unsigned int SET_SPEEDSTEP_STATE ; 
 unsigned int SMI_TRIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int smi_cmd ; 
 unsigned int smi_port ; 
 int smi_sig ; 
 TYPE_1__* speedstep_freqs ; 

__attribute__((used)) static void FUNC9(unsigned int state)
{
	unsigned int result = 0, command, new_state, dummy;
	unsigned long flags;
	unsigned int function = SET_SPEEDSTEP_STATE;
	unsigned int retry = 0;

	if (state > 0x1)
		return;

	/* Disable IRQs */
	FUNC7();
	FUNC3(flags);

	command = (smi_sig & 0xffffff00) | (smi_cmd & 0xff);

	FUNC5("trying to set frequency to state %u "
		"with command %x at port %x\n",
		state, command, smi_port);

	do {
		if (retry) {
			/*
			 * We need to enable interrupts, otherwise the blockage
			 * won't resolve.
			 *
			 * We disable preemption so that other processes don't
			 * run. If other processes were running, they could
			 * submit more DMA requests, making the blockage worse.
			 */
			FUNC5("retry %u, previous result %u, waiting...\n",
					retry, result);
			FUNC1();
			FUNC4(retry * 50);
			FUNC0();
		}
		retry++;
		__asm__ __volatile__(
			"push %%ebp\n"
			"out %%al, (%%dx)\n"
			"pop %%ebp"
			: "=b" (new_state), "=D" (result),
			  "=c" (dummy), "=a" (dummy),
			  "=d" (dummy), "=S" (dummy)
			: "a" (command), "b" (function), "c" (state),
			  "d" (smi_port), "S" (0), "D" (0)
			);
	} while ((new_state != state) && (retry <= SMI_TRIES));

	/* enable IRQs */
	FUNC2(flags);
	FUNC8();

	if (new_state == state)
		FUNC5("change to %u MHz succeeded after %u tries "
			"with result %u\n",
			(speedstep_freqs[new_state].frequency / 1000),
			retry, result);
	else
		FUNC6("change to state %u failed with new_state %u and result %u\n",
		       state, new_state, result);

	return;
}