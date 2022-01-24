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
struct clk_core {scalar_t__ protect_count; struct clk_core* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 

__attribute__((used)) static void FUNC1(struct clk_core *core)
{
	FUNC0(&prepare_lock);

	if (!core)
		return;

	if (core->protect_count == 0)
		FUNC1(core->parent);

	core->protect_count++;
}