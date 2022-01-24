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
struct kvmppc_vcore {scalar_t__ preempt_tb; int /*<<< orphan*/  stoltb_lock; int /*<<< orphan*/  stolen_tb; } ;

/* Variables and functions */
 scalar_t__ TB_NIL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct kvmppc_vcore *vc)
{
	unsigned long flags;

	FUNC1(&vc->stoltb_lock, flags);
	if (vc->preempt_tb != TB_NIL) {
		vc->stolen_tb += FUNC0() - vc->preempt_tb;
		vc->preempt_tb = TB_NIL;
	}
	FUNC2(&vc->stoltb_lock, flags);
}