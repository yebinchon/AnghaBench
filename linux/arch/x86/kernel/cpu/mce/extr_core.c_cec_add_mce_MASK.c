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
struct mce {int addr; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mce*) ; 
 scalar_t__ FUNC2 (struct mce*) ; 
 scalar_t__ FUNC3 (struct mce*) ; 

__attribute__((used)) static bool FUNC4(struct mce *m)
{
	if (!m)
		return false;

	/* We eat only correctable DRAM errors with usable addresses. */
	if (FUNC2(m) &&
	    FUNC1(m)  &&
	    FUNC3(m))
		if (!FUNC0(m->addr >> PAGE_SHIFT))
			return true;

	return false;
}