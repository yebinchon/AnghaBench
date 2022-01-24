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
struct regmap_range_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parse_inplace; } ;
struct regmap {int cache_dirty; int /*<<< orphan*/  bus; scalar_t__ cache_only; int /*<<< orphan*/  dev; int /*<<< orphan*/  cache_bypass; int /*<<< orphan*/  reg_stride; int /*<<< orphan*/  (* writeable_reg ) (int /*<<< orphan*/ ,int) ;TYPE_1__ format; int /*<<< orphan*/  can_multi_write; } ;
struct reg_sequence {int reg; unsigned int def; scalar_t__ delay_us; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct regmap_range_node* FUNC2 (struct regmap*,unsigned int) ; 
 int FUNC3 (struct regmap*,struct reg_sequence*,size_t) ; 
 int FUNC4 (struct regmap*,struct reg_sequence const*,size_t) ; 
 int FUNC5 (struct regmap*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct reg_sequence*) ; 
 struct reg_sequence* FUNC8 (struct reg_sequence const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct regmap *map,
				   const struct reg_sequence *regs,
				   size_t num_regs)
{
	int i;
	int ret;

	if (!map->can_multi_write) {
		for (i = 0; i < num_regs; i++) {
			ret = FUNC5(map, regs[i].reg, regs[i].def);
			if (ret != 0)
				return ret;

			if (regs[i].delay_us)
				FUNC11(regs[i].delay_us);
		}
		return 0;
	}

	if (!map->format.parse_inplace)
		return -EINVAL;

	if (map->writeable_reg)
		for (i = 0; i < num_regs; i++) {
			int reg = regs[i].reg;
			if (!map->writeable_reg(map->dev, reg))
				return -EINVAL;
			if (!FUNC0(reg, map->reg_stride))
				return -EINVAL;
		}

	if (!map->cache_bypass) {
		for (i = 0; i < num_regs; i++) {
			unsigned int val = regs[i].def;
			unsigned int reg = regs[i].reg;
			ret = FUNC9(map, reg, val);
			if (ret) {
				FUNC6(map->dev,
				"Error in caching of register: %x ret: %d\n",
								reg, ret);
				return ret;
			}
		}
		if (map->cache_only) {
			map->cache_dirty = true;
			return 0;
		}
	}

	FUNC1(!map->bus);

	for (i = 0; i < num_regs; i++) {
		unsigned int reg = regs[i].reg;
		struct regmap_range_node *range;

		/* Coalesce all the writes between a page break or a delay
		 * in a sequence
		 */
		range = FUNC2(map, reg);
		if (range || regs[i].delay_us) {
			size_t len = sizeof(struct reg_sequence)*num_regs;
			struct reg_sequence *base = FUNC8(regs, len,
							   GFP_KERNEL);
			if (!base)
				return -ENOMEM;
			ret = FUNC3(map, base,
								  num_regs);
			FUNC7(base);

			return ret;
		}
	}
	return FUNC4(map, regs, num_regs);
}