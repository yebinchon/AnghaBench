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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ZEUS_CPLD_CONTROL ; 
 int /*<<< orphan*/  ZEUS_CPLD_CONTROL_CF_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int state)
{
	u16 cpld_state = FUNC0(ZEUS_CPLD_CONTROL);

	if (state)
		cpld_state |= ZEUS_CPLD_CONTROL_CF_RST;
	else
		cpld_state &= ~ZEUS_CPLD_CONTROL_CF_RST;

	FUNC1(cpld_state, ZEUS_CPLD_CONTROL);
}