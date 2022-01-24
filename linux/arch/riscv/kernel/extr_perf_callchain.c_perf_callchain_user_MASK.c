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
struct pt_regs {unsigned long s0; int /*<<< orphan*/  ra; int /*<<< orphan*/  sepc; } ;
struct perf_callchain_entry_ctx {scalar_t__ nr; scalar_t__ max_stack; } ;
struct TYPE_2__ {scalar_t__ (* is_in_guest ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_callchain_entry_ctx*,int /*<<< orphan*/ ) ; 
 TYPE_1__* perf_guest_cbs ; 
 scalar_t__ FUNC1 () ; 
 unsigned long FUNC2 (struct perf_callchain_entry_ctx*,unsigned long,int /*<<< orphan*/ ) ; 

void FUNC3(struct perf_callchain_entry_ctx *entry,
			 struct pt_regs *regs)
{
	unsigned long fp = 0;

	/* RISC-V does not support perf in guest mode. */
	if (perf_guest_cbs && perf_guest_cbs->is_in_guest())
		return;

	fp = regs->s0;
	FUNC0(entry, regs->sepc);

	fp = FUNC2(entry, fp, regs->ra);
	while (fp && !(fp & 0x3) && entry->nr < entry->max_stack)
		fp = FUNC2(entry, fp, 0);
}