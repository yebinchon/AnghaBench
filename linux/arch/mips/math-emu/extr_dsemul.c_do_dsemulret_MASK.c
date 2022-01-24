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
struct pt_regs {int /*<<< orphan*/  cp0_epc; } ;
struct TYPE_4__ {int /*<<< orphan*/  bd_emu_cont_pc; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  ds_emul ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  errors ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

bool FUNC3(struct pt_regs *xcp)
{
	/* Cleanup the allocated frame, returning if there wasn't one */
	if (!FUNC1(current)) {
		FUNC0(errors);
		return false;
	}

	/* Set EPC to return to post-branch instruction */
	xcp->cp0_epc = current->thread.bd_emu_cont_pc;
	FUNC2("dsemulret to 0x%08lx\n", xcp->cp0_epc);
	FUNC0(ds_emul);
	return true;
}