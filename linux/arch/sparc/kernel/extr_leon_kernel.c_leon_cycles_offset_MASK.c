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
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* e; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  rld; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t leon3_gptimer_idx ; 
 TYPE_2__* leon3_gptimer_regs ; 

__attribute__((used)) static u32 FUNC2(void)
{
	u32 rld, val, ctrl, off;

	rld = FUNC0(&leon3_gptimer_regs->e[leon3_gptimer_idx].rld);
	val = FUNC0(&leon3_gptimer_regs->e[leon3_gptimer_idx].val);
	ctrl = FUNC0(&leon3_gptimer_regs->e[leon3_gptimer_idx].ctrl);
	if (FUNC1(ctrl)) {
		val = FUNC0(&leon3_gptimer_regs->e[leon3_gptimer_idx].val);
		off = 2 * rld - val;
	} else {
		off = rld - val;
	}

	return off;
}