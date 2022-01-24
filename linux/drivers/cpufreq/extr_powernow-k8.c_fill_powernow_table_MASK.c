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
typedef  int /*<<< orphan*/  u8 ;
struct pst_s {scalar_t__ fid; int vid; } ;
struct powernow_k8_data {unsigned int batps; unsigned int numps; scalar_t__ currfid; int currvid; scalar_t__ cpu; struct cpufreq_frequency_table* powernow_table; } ;
struct cpufreq_frequency_table {int driver_data; int frequency; } ;

/* Variables and functions */
 int CPUFREQ_TABLE_END ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct powernow_k8_data*,struct pst_s*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_frequency_table*) ; 
 struct cpufreq_frequency_table* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct powernow_k8_data*) ; 
 scalar_t__ FUNC9 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct powernow_k8_data *data,
		struct pst_s *pst, u8 maxvid)
{
	struct cpufreq_frequency_table *powernow_table;
	unsigned int j;

	if (data->batps) {
		/* use ACPI support to get full speed on mains power */
		FUNC7("Only %d pstates usable (use ACPI driver for full range\n",
			data->batps);
		data->numps = data->batps;
	}

	for (j = 1; j < data->numps; j++) {
		if (pst[j-1].fid >= pst[j].fid) {
			FUNC6("PST out of sequence\n");
			return -EINVAL;
		}
	}

	if (data->numps < 2) {
		FUNC6("no p states to transition\n");
		return -ENODEV;
	}

	if (FUNC0(data, pst, maxvid))
		return -EINVAL;

	powernow_table = FUNC4((sizeof(*powernow_table)
		* (data->numps + 1)), GFP_KERNEL);
	if (!powernow_table)
		return -ENOMEM;

	for (j = 0; j < data->numps; j++) {
		int freq;
		powernow_table[j].driver_data = pst[j].fid; /* lower 8 bits */
		powernow_table[j].driver_data |= (pst[j].vid << 8); /* upper 8 bits */
		freq = FUNC2(pst[j].fid);
		powernow_table[j].frequency = freq;
	}
	powernow_table[data->numps].frequency = CPUFREQ_TABLE_END;
	powernow_table[data->numps].driver_data = 0;

	if (FUNC9(data)) {
		FUNC3(powernow_table);
		return -EIO;
	}

	FUNC5("cfid 0x%x, cvid 0x%x\n", data->currfid, data->currvid);
	data->powernow_table = powernow_table;
	if (FUNC1(FUNC10(data->cpu)) == data->cpu)
		FUNC8(data);

	for (j = 0; j < data->numps; j++)
		if ((pst[j].fid == data->currfid) &&
		    (pst[j].vid == data->currvid))
			return 0;

	FUNC5("currfid/vid do not match PST, ignoring\n");
	return 0;
}