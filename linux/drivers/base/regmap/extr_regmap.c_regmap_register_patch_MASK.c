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
struct regmap {int patch_regs; int cache_bypass; int async; int /*<<< orphan*/  lock_arg; int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;struct reg_sequence* patch; } ;
struct reg_sequence {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,char*,int) ; 
 int FUNC1 (struct regmap*,struct reg_sequence const*,int) ; 
 struct reg_sequence* FUNC2 (struct reg_sequence*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct reg_sequence*,struct reg_sequence const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct regmap *map, const struct reg_sequence *regs,
			  int num_regs)
{
	struct reg_sequence *p;
	int ret;
	bool bypass;

	if (FUNC0(num_regs <= 0, "invalid registers number (%d)\n",
	    num_regs))
		return 0;

	p = FUNC2(map->patch,
		     sizeof(struct reg_sequence) * (map->patch_regs + num_regs),
		     GFP_KERNEL);
	if (p) {
		FUNC3(p + map->patch_regs, regs, num_regs * sizeof(*regs));
		map->patch = p;
		map->patch_regs += num_regs;
	} else {
		return -ENOMEM;
	}

	map->lock(map->lock_arg);

	bypass = map->cache_bypass;

	map->cache_bypass = true;
	map->async = true;

	ret = FUNC1(map, regs, num_regs);

	map->async = false;
	map->cache_bypass = bypass;

	map->unlock(map->lock_arg);

	FUNC4(map);

	return ret;
}