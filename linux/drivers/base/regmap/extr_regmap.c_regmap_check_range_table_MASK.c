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
struct regmap_access_table {int /*<<< orphan*/  n_yes_ranges; int /*<<< orphan*/  yes_ranges; int /*<<< orphan*/  n_no_ranges; int /*<<< orphan*/  no_ranges; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(struct regmap *map, unsigned int reg,
			      const struct regmap_access_table *table)
{
	/* Check "no ranges" first */
	if (FUNC0(reg, table->no_ranges, table->n_no_ranges))
		return false;

	/* In case zero "yes ranges" are supplied, any reg is OK */
	if (!table->n_yes_ranges)
		return true;

	return FUNC0(reg, table->yes_ranges,
				    table->n_yes_ranges);
}