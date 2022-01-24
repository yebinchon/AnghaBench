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
struct clk_core {int protect_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 

__attribute__((used)) static void FUNC2(struct clk_core *core, int count)
{
	FUNC1(&prepare_lock);

	if (!core)
		return;

	if (count == 0)
		return;

	FUNC0(core);
	core->protect_count = count;
}