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
struct clk_core {scalar_t__ protect_count; struct clk_core* parent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 

__attribute__((used)) static void FUNC2(struct clk_core *core)
{
	FUNC1(&prepare_lock);

	if (!core)
		return;

	if (FUNC0(core->protect_count == 0,
	    "%s already unprotected\n", core->name))
		return;

	if (--core->protect_count > 0)
		return;

	FUNC2(core->parent);
}