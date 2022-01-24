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
struct TYPE_2__ {unsigned int* slot; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int SPU_DECR_STATUS_RUNNING ; 
 int /*<<< orphan*/  SPU_WrDec ; 
 unsigned int decr_status ; 
 TYPE_1__* regs_spill ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	unsigned int offset;
	unsigned int decr_running;
	unsigned int decr;

	/* Restore, Step 6(moved):
	 *    If the LSCSA "decrementer running" flag is set
	 *    then write the SPU_WrDec channel with the
	 *    decrementer value from LSCSA.
	 */
	offset = FUNC0(decr_status);
	decr_running = regs_spill[offset].slot[0] & SPU_DECR_STATUS_RUNNING;
	if (decr_running) {
		offset = FUNC0(decr);
		decr = regs_spill[offset].slot[0];
		FUNC1(SPU_WrDec, decr);
	}
}