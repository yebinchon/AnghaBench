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
struct rail_alignment {int dummy; } ;
struct device {int dummy; } ;
struct cvb_table_freq_entry {unsigned long freq; int /*<<< orphan*/  coefficients; } ;
struct cvb_table {int /*<<< orphan*/  voltage_scale; int /*<<< orphan*/  speedo_scale; struct cvb_table_freq_entry* entries; int /*<<< orphan*/  max_millivolts; int /*<<< orphan*/  min_millivolts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWN ; 
 int MAX_DVFS_FREQS ; 
 int /*<<< orphan*/  UP ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (struct device*,unsigned long,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,struct rail_alignment*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rail_alignment*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, const struct cvb_table *table,
			   struct rail_alignment *align,
			   int speedo_value, unsigned long max_freq)
{
	int i, ret, dfll_mv, min_mv, max_mv;

	min_mv = FUNC4(table->min_millivolts, align, UP);
	max_mv = FUNC4(table->max_millivolts, align, DOWN);

	for (i = 0; i < MAX_DVFS_FREQS; i++) {
		const struct cvb_table_freq_entry *entry = &table->entries[i];

		if (!entry->freq || (entry->freq > max_freq))
			break;

		dfll_mv = FUNC2(speedo_value, table->speedo_scale,
					  &entry->coefficients);
		dfll_mv = FUNC3(dfll_mv, table->voltage_scale,
					    align);
		dfll_mv = FUNC0(dfll_mv, min_mv, max_mv);

		ret = FUNC1(dev, entry->freq, dfll_mv * 1000);
		if (ret)
			return ret;
	}

	return 0;
}