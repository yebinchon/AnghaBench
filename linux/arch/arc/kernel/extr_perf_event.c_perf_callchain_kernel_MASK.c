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
struct pt_regs {int dummy; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct arc_callchain_trace {struct perf_callchain_entry_ctx* perf_stuff; int /*<<< orphan*/  depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pt_regs*,int /*<<< orphan*/ ,struct arc_callchain_trace*) ; 
 int /*<<< orphan*/  callchain_trace ; 

void FUNC1(struct perf_callchain_entry_ctx *entry,
			   struct pt_regs *regs)
{
	struct arc_callchain_trace ctrl = {
		.depth = 0,
		.perf_stuff = entry,
	};

	FUNC0(NULL, regs, callchain_trace, &ctrl);
}