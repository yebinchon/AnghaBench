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
 int /*<<< orphan*/  SPU_WrEventMask ; 
 TYPE_1__* regs_spill ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	unsigned int offset;
	unsigned int event_mask;

	/* Restore, Step 15:
	 *    Restore the SPU_RdEventMsk data from the LSCSA.
	 */
	offset = FUNC0(event_mask);
	event_mask = regs_spill[offset].slot[0];
	FUNC1(SPU_WrEventMask, event_mask);
}