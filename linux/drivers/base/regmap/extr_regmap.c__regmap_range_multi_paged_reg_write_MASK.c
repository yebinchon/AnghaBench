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
struct regmap_range_node {int dummy; } ;
struct regmap {int dummy; } ;
struct reg_sequence {unsigned int reg; scalar_t__ delay_us; } ;

/* Variables and functions */
 struct regmap_range_node* FUNC0 (struct regmap*,unsigned int) ; 
 int FUNC1 (struct regmap*,struct reg_sequence*,int) ; 
 unsigned int FUNC2 (struct regmap*,unsigned int,struct regmap_range_node*) ; 
 int FUNC3 (struct regmap*,unsigned int*,struct regmap_range_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct regmap *map,
					       struct reg_sequence *regs,
					       size_t num_regs)
{
	int ret;
	int i, n;
	struct reg_sequence *base;
	unsigned int this_page = 0;
	unsigned int page_change = 0;
	/*
	 * the set of registers are not neccessarily in order, but
	 * since the order of write must be preserved this algorithm
	 * chops the set each time the page changes. This also applies
	 * if there is a delay required at any point in the sequence.
	 */
	base = regs;
	for (i = 0, n = 0; i < num_regs; i++, n++) {
		unsigned int reg = regs[i].reg;
		struct regmap_range_node *range;

		range = FUNC0(map, reg);
		if (range) {
			unsigned int win_page = FUNC2(map, reg,
								      range);

			if (i == 0)
				this_page = win_page;
			if (win_page != this_page) {
				this_page = win_page;
				page_change = 1;
			}
		}

		/* If we have both a page change and a delay make sure to
		 * write the regs and apply the delay before we change the
		 * page.
		 */

		if (page_change || regs[i].delay_us) {

				/* For situations where the first write requires
				 * a delay we need to make sure we don't call
				 * raw_multi_reg_write with n=0
				 * This can't occur with page breaks as we
				 * never write on the first iteration
				 */
				if (regs[i].delay_us && i == 0)
					n = 1;

				ret = FUNC1(map, base, n);
				if (ret != 0)
					return ret;

				if (regs[i].delay_us)
					FUNC4(regs[i].delay_us);

				base += n;
				n = 0;

				if (page_change) {
					ret = FUNC3(map,
								  &base[n].reg,
								  range, 1);
					if (ret != 0)
						return ret;

					page_change = 0;
				}

		}

	}
	if (n > 0)
		return FUNC1(map, base, n);
	return 0;
}