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
typedef  int u32 ;
struct mpic_msgr {int num; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct mpic_msgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpic_msgr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mpic_msgr *msgr)
{
	unsigned long flags;
	u32 mer;

	FUNC2(&msgr->lock, flags);
	mer = FUNC0(msgr);
	FUNC1(msgr, mer | (1 << msgr->num));
	FUNC3(&msgr->lock, flags);
}