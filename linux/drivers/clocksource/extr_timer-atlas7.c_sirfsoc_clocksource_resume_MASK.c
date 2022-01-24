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
struct clocksource {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ SIRFSOC_TIMER_64COUNTER_CTRL ; 
 scalar_t__ SIRFSOC_TIMER_64COUNTER_LOAD_HI ; 
 scalar_t__ SIRFSOC_TIMER_64COUNTER_LOAD_LO ; 
 int SIRFSOC_TIMER_REG_CNT ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ sirfsoc_timer_base ; 
 scalar_t__* sirfsoc_timer_reg_list ; 
 int* sirfsoc_timer_reg_val ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct clocksource *cs)
{
	int i;

	for (i = 0; i < SIRFSOC_TIMER_REG_CNT - 2; i++)
		FUNC2(sirfsoc_timer_reg_val[i], sirfsoc_timer_base + sirfsoc_timer_reg_list[i]);

	FUNC2(sirfsoc_timer_reg_val[SIRFSOC_TIMER_REG_CNT - 2],
		sirfsoc_timer_base + SIRFSOC_TIMER_64COUNTER_LOAD_LO);
	FUNC2(sirfsoc_timer_reg_val[SIRFSOC_TIMER_REG_CNT - 1],
		sirfsoc_timer_base + SIRFSOC_TIMER_64COUNTER_LOAD_HI);

	FUNC2(FUNC1(sirfsoc_timer_base + SIRFSOC_TIMER_64COUNTER_CTRL) |
		FUNC0(1) | FUNC0(0), sirfsoc_timer_base + SIRFSOC_TIMER_64COUNTER_CTRL);
}