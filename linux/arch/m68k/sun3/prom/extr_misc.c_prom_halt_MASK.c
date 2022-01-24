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
struct TYPE_2__ {int /*<<< orphan*/  (* pv_halt ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* romvec ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
	unsigned long flags;
again:
	FUNC1(flags);
	(*(romvec->pv_halt))();
	FUNC0(flags);
	goto again; /* PROM is out to get me -DaveM */
}