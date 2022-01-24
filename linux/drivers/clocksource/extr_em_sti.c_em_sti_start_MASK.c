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
struct em_sti_priv {int* active; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t USER_CLOCKEVENT ; 
 size_t USER_CLOCKSOURCE ; 
 int FUNC0 (struct em_sti_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct em_sti_priv *p, unsigned int user)
{
	unsigned long flags;
	int used_before;
	int ret = 0;

	FUNC1(&p->lock, flags);
	used_before = p->active[USER_CLOCKSOURCE] | p->active[USER_CLOCKEVENT];
	if (!used_before)
		ret = FUNC0(p);

	if (!ret)
		p->active[user] = 1;
	FUNC2(&p->lock, flags);

	return ret;
}