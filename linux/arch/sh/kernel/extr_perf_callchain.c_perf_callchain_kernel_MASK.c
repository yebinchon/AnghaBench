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
struct pt_regs {int /*<<< orphan*/  pc; } ;
struct perf_callchain_entry_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  callchain_ops ; 
 int /*<<< orphan*/  FUNC0 (struct perf_callchain_entry_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pt_regs*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct perf_callchain_entry_ctx*) ; 

void
FUNC2(struct perf_callchain_entry_ctx *entry, struct pt_regs *regs)
{
	FUNC0(entry, regs->pc);

	FUNC1(NULL, regs, NULL, &callchain_ops, entry);
}