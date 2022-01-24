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
struct powernow_k8_data {int currvid; int currfid; TYPE_1__* powernow_table; } ;
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {void* new; void* old; } ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 struct cpufreq_policy* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*,struct cpufreq_freqs*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*,struct cpufreq_freqs*,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,...) ; 
 scalar_t__ FUNC6 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct powernow_k8_data*,int,int) ; 

__attribute__((used)) static int FUNC9(struct powernow_k8_data *data,
		unsigned int index)
{
	struct cpufreq_policy *policy;
	u32 fid = 0;
	u32 vid = 0;
	int res;
	struct cpufreq_freqs freqs;

	FUNC5("cpu %d transition to index %u\n", FUNC7(), index);

	/* fid/vid correctness check for k8 */
	/* fid are the lower 8 bits of the index we stored into
	 * the cpufreq frequency table in find_psb_table, vid
	 * are the upper 8 bits.
	 */
	fid = data->powernow_table[index].driver_data & 0xFF;
	vid = (data->powernow_table[index].driver_data & 0xFF00) >> 8;

	FUNC5("table matched fid 0x%x, giving vid 0x%x\n", fid, vid);

	if (FUNC6(data))
		return 1;

	if ((data->currvid == vid) && (data->currfid == fid)) {
		FUNC5("target matches current values (fid 0x%x, vid 0x%x)\n",
			fid, vid);
		return 0;
	}

	FUNC5("cpu %d, changing to fid 0x%x, vid 0x%x\n",
		FUNC7(), fid, vid);
	freqs.old = FUNC4(data->currfid);
	freqs.new = FUNC4(fid);

	policy = FUNC0(FUNC7());
	FUNC1(policy);

	FUNC2(policy, &freqs);
	res = FUNC8(data, fid, vid);
	FUNC3(policy, &freqs, res);

	return res;
}