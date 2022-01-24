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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_mutex ; 
 int /*<<< orphan*/  reset_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(u32 mask, int enable)
{
	unsigned long flags;
	u32 val;

	if (!mask)
		return;

	FUNC2(&reset_mutex, flags);
	val = FUNC0(reset_reg);

	if (enable)
		val &= ~mask;
	else
		val |= mask;

	FUNC1(val, reset_reg);
	FUNC3(&reset_mutex, flags);
}