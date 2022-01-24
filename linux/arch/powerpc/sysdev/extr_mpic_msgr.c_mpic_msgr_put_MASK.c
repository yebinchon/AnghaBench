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
struct mpic_msgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGR_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct mpic_msgr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct mpic_msgr *msgr)
{
	unsigned long flags;

	FUNC1(&msgr->lock, flags);
	msgr->in_use = MSGR_FREE;
	FUNC0(msgr);
	FUNC2(&msgr->lock, flags);
}