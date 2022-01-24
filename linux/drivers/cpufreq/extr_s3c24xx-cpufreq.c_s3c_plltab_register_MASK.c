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
struct cpufreq_frequency_table {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_TABLE_END ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cpufreq_frequency_table* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_frequency_table*,struct cpufreq_frequency_table*,unsigned int) ; 
 struct cpufreq_frequency_table* pll_reg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

int FUNC4(struct cpufreq_frequency_table *plls,
			       unsigned int plls_no)
{
	struct cpufreq_frequency_table *vals;
	unsigned int size;

	size = sizeof(*vals) * (plls_no + 1);

	vals = FUNC0(size, GFP_KERNEL);
	if (vals) {
		FUNC1(vals, plls, size);
		pll_reg = vals;

		/* write a terminating entry, we don't store it in the
		 * table that is stored in the kernel */
		vals += plls_no;
		vals->frequency = CPUFREQ_TABLE_END;

		FUNC3("%d PLL entries\n", plls_no);
	} else
		FUNC2("no memory for PLL tables\n");

	return vals ? 0 : -ENOMEM;
}