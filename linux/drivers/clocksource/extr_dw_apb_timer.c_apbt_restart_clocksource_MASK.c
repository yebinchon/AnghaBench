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
struct dw_apb_clocksource {int dummy; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 struct dw_apb_clocksource* FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_apb_clocksource*) ; 

__attribute__((used)) static void FUNC2(struct clocksource *cs)
{
	struct dw_apb_clocksource *dw_cs =
		FUNC0(cs);

	FUNC1(dw_cs);
}