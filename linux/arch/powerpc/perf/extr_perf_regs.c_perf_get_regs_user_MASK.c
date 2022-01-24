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
struct perf_regs {scalar_t__ regs; int /*<<< orphan*/  abi; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_SAMPLE_REGS_ABI_NONE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct perf_regs *regs_user,
			struct pt_regs *regs,
			struct pt_regs *regs_user_copy)
{
	regs_user->regs = FUNC1(current);
	regs_user->abi = (regs_user->regs) ? FUNC0(current) :
			 PERF_SAMPLE_REGS_ABI_NONE;
}