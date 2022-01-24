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
typedef  unsigned long u32 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_ST_RTAR ; 
 int /*<<< orphan*/  AT91_ST_SR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  regmap_st ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC4(unsigned long delta, struct clock_event_device *dev)
{
	u32		alm;
	int		status = 0;
	unsigned int	val;

	FUNC0(delta < 2);

	/* The alarm IRQ uses absolute time (now+delta), not the relative
	 * time (delta) in our calling convention.  Like all clockevents
	 * using such "match" hardware, we have a race to defend against.
	 *
	 * Our defense here is to have set up the clockevent device so the
	 * delta is at least two.  That way we never end up writing RTAR
	 * with the value then held in CRTR ... which would mean the match
	 * wouldn't trigger until 32 seconds later, after CRTR wraps.
	 */
	alm = FUNC1();

	/* Cancel any pending alarm; flush any pending IRQ */
	FUNC3(regmap_st, AT91_ST_RTAR, alm);
	FUNC2(regmap_st, AT91_ST_SR, &val);

	/* Schedule alarm by writing RTAR. */
	alm += delta;
	FUNC3(regmap_st, AT91_ST_RTAR, alm);

	return status;
}