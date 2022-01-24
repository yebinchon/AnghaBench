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

/* Variables and functions */
 int ENOSPC ; 
 int IP27_HUB_IRQ_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hub_irq_map ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(void)
{
	int level;

again:
	level = FUNC0(hub_irq_map, IP27_HUB_IRQ_COUNT);
	if (level >= IP27_HUB_IRQ_COUNT)
		return -ENOSPC;

	if (FUNC1(level, hub_irq_map))
		goto again;

	return level;
}