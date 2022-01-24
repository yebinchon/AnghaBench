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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nios2_clocksource {int /*<<< orphan*/  timer; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nios2_clocksource* FUNC3 (struct clocksource*) ; 

__attribute__((used)) static u64 FUNC4(struct clocksource *cs)
{
	struct nios2_clocksource *nios2_cs = FUNC3(cs);
	unsigned long flags;
	u32 count;

	FUNC1(flags);
	count = FUNC2(&nios2_cs->timer);
	FUNC0(flags);

	/* Counter is counting down */
	return ~count;
}