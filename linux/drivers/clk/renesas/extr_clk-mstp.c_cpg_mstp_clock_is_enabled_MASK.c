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
typedef  int u32 ;
struct mstp_clock_group {scalar_t__ smstpcr; scalar_t__ mstpsr; } ;
struct mstp_clock {int /*<<< orphan*/  bit_index; struct mstp_clock_group* group; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mstp_clock_group*,scalar_t__) ; 
 struct mstp_clock* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct mstp_clock *clock = FUNC2(hw);
	struct mstp_clock_group *group = clock->group;
	u32 value;

	if (group->mstpsr)
		value = FUNC1(group, group->mstpsr);
	else
		value = FUNC1(group, group->smstpcr);

	return !(value & FUNC0(clock->bit_index));
}