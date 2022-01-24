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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prepare_lock ; 

__attribute__((used)) static int FUNC2(struct clk_core *core)
{
	int ret;

	FUNC1(&prepare_lock);

	if (!core)
		return -EINVAL;

	if (core->protect_count == 0)
		return 0;

	ret = core->protect_count;
	core->protect_count = 1;
	FUNC0(core);

	return ret;
}