#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct clk_parent_map {struct clk_core* core; scalar_t__ name; TYPE_1__* hw; } ;
struct clk_core {struct clk_parent_map* parents; } ;
struct TYPE_2__ {struct clk_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct clk_core* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_core*) ; 
 struct clk_core* FUNC3 (struct clk_core*,size_t) ; 
 struct clk_core* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct clk_core *core, u8 index)
{
	struct clk_parent_map *entry = &core->parents[index];
	struct clk_core *parent = FUNC0(-ENOENT);

	if (entry->hw) {
		parent = entry->hw->core;
		/*
		 * We have a direct reference but it isn't registered yet?
		 * Orphan it and let clk_reparent() update the orphan status
		 * when the parent is registered.
		 */
		if (!parent)
			parent = FUNC0(-EPROBE_DEFER);
	} else {
		parent = FUNC3(core, index);
		if (FUNC1(parent) && FUNC2(parent) == -ENOENT && entry->name)
			parent = FUNC4(entry->name);
	}

	/* Only cache it if it's not an error */
	if (!FUNC1(parent))
		entry->core = parent;
}