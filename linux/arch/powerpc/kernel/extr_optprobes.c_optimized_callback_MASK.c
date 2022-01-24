#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {unsigned long nip; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct optimized_kprobe {TYPE_1__ kp; } ;
struct TYPE_7__ {int /*<<< orphan*/  kprobe_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  KPROBE_HIT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  current_kprobe ; 
 TYPE_4__* FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct optimized_kprobe *op,
			       struct pt_regs *regs)
{
	/* This is possible if op is under delayed unoptimizing */
	if (FUNC2(&op->kp))
		return;

	FUNC6();

	if (FUNC3()) {
		FUNC4(&op->kp);
	} else {
		FUNC0(current_kprobe, &op->kp);
		regs->nip = (unsigned long)op->kp.addr;
		FUNC1()->kprobe_status = KPROBE_HIT_ACTIVE;
		FUNC5(&op->kp, regs);
		FUNC0(current_kprobe, NULL);
	}

	FUNC7();
}