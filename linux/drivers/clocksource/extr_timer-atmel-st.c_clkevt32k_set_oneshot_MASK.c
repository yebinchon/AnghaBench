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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_ST_ALMS ; 
 int /*<<< orphan*/  AT91_ST_IER ; 
 int /*<<< orphan*/  AT91_ST_RTAR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  irqmask ; 
 int /*<<< orphan*/  last_crtr ; 
 int /*<<< orphan*/  regmap_st ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *dev)
{
	FUNC0();

	/*
	 * ALM for oneshot irqs, set by next_event()
	 * before 32 seconds have passed.
	 */
	irqmask = AT91_ST_ALMS;
	FUNC1(regmap_st, AT91_ST_RTAR, last_crtr);
	FUNC1(regmap_st, AT91_ST_IER, irqmask);
	return 0;
}