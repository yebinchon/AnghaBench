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
typedef  int u32 ;
struct ti_cpufreq_data {TYPE_1__* soc_data; int /*<<< orphan*/  syscon; struct device* cpu_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rev_offset; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int REVISION_MASK ; 
 int REVISION_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct ti_cpufreq_data *opp_data,
			      u32 *revision_value)
{
	struct device *dev = opp_data->cpu_dev;
	u32 revision;
	int ret;

	ret = FUNC2(opp_data->syscon, opp_data->soc_data->rev_offset,
			  &revision);
	if (ret) {
		FUNC1(dev,
			"Failed to read the revision number from syscon: %d\n",
			ret);
		return ret;
	}

	*revision_value = FUNC0((revision >> REVISION_SHIFT) & REVISION_MASK);

	return 0;
}