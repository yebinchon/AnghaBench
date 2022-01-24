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
typedef  scalar_t__ u32 ;
struct powernowk8_target_arg {unsigned int newstate; struct cpufreq_policy* pol; } ;
struct powernow_k8_data {scalar_t__ currfid; scalar_t__ currvid; TYPE_1__* powernow_table; } ;
struct cpufreq_policy {int /*<<< orphan*/  cur; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 long EINVAL ; 
 long EIO ; 
 int /*<<< orphan*/  fidvid_mutex ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 struct powernow_k8_data* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernow_data ; 
 int /*<<< orphan*/  FUNC5 (struct powernow_k8_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct powernow_k8_data*) ; 
 int FUNC10 (struct powernow_k8_data*,unsigned int) ; 

__attribute__((used)) static long FUNC11(void *arg)
{
	struct powernowk8_target_arg *pta = arg;
	struct cpufreq_policy *pol = pta->pol;
	unsigned newstate = pta->newstate;
	struct powernow_k8_data *data = FUNC4(powernow_data, pol->cpu);
	u32 checkfid;
	u32 checkvid;
	int ret;

	if (!data)
		return -EINVAL;

	checkfid = data->currfid;
	checkvid = data->currvid;

	if (FUNC3()) {
		FUNC7("failing targ, change pending bit set\n");
		return -EIO;
	}

	FUNC6("targ: cpu %d, %d kHz, min %d, max %d\n",
		pol->cpu, data->powernow_table[newstate].frequency, pol->min,
		pol->max);

	if (FUNC9(data))
		return -EIO;

	FUNC6("targ: curr fid 0x%x, vid 0x%x\n",
		data->currfid, data->currvid);

	if ((checkvid != data->currvid) ||
	    (checkfid != data->currfid)) {
		FUNC8("error - out of sync, fix 0x%x 0x%x, vid 0x%x 0x%x\n",
		       checkfid, data->currfid,
		       checkvid, data->currvid);
	}

	FUNC1(&fidvid_mutex);

	FUNC5(data, newstate);

	ret = FUNC10(data, newstate);

	if (ret) {
		FUNC7("transition frequency failed\n");
		FUNC2(&fidvid_mutex);
		return 1;
	}
	FUNC2(&fidvid_mutex);

	pol->cur = FUNC0(data->currfid);

	return 0;
}