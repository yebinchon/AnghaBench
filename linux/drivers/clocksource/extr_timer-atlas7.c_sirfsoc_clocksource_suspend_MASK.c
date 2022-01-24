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
 int SIRFSOC_TIMER_REG_CNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ sirfsoc_timer_base ; 
 scalar_t__* sirfsoc_timer_reg_list ; 
 int /*<<< orphan*/ * sirfsoc_timer_reg_val ; 

__attribute__((used)) static void FUNC1(struct clocksource *cs)
{
	int i;

	for (i = 0; i < SIRFSOC_TIMER_REG_CNT; i++)
		sirfsoc_timer_reg_val[i] = FUNC0(sirfsoc_timer_base + sirfsoc_timer_reg_list[i]);
}