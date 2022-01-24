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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int PF_RANDOMIZE ; 
 int /*<<< orphan*/  TIF_32BIT ; 
 TYPE_1__* current ; 
 unsigned long FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(void)
{
	unsigned long rnd = 0UL;

	if (current->flags & PF_RANDOMIZE) {
		unsigned long val = FUNC0();
		if (FUNC1(TIF_32BIT))
			rnd = (val % (1UL << (23UL-PAGE_SHIFT)));
		else
			rnd = (val % (1UL << (30UL-PAGE_SHIFT)));
	}
	return rnd << PAGE_SHIFT;
}