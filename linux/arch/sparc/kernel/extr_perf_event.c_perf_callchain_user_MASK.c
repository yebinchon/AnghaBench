#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct pt_regs {int /*<<< orphan*/  tpc; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  fault_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_32BIT ; 
 TYPE_2__* current ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct perf_callchain_entry_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_callchain_entry_ctx*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_callchain_entry_ctx*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(struct perf_callchain_entry_ctx *entry, struct pt_regs *regs)
{
	u64 saved_fault_address = FUNC0()->fault_address;
	u8 saved_fault_code = FUNC2();

	FUNC5(entry, regs->tpc);

	if (!current->mm)
		return;

	FUNC1();

	FUNC3();

	if (FUNC9(TIF_32BIT))
		FUNC6(entry, regs);
	else
		FUNC7(entry, regs);

	FUNC4();

	FUNC8(saved_fault_code);
	FUNC0()->fault_address = saved_fault_address;
}