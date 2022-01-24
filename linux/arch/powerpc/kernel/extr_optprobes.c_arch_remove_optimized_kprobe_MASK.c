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
struct TYPE_2__ {int /*<<< orphan*/ * insn; } ;
struct optimized_kprobe {TYPE_1__ optinsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1(struct optimized_kprobe *op)
{
	if (op->optinsn.insn) {
		FUNC0(op->optinsn.insn, 1);
		op->optinsn.insn = NULL;
	}
}