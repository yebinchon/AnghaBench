#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct pstate_idx_revmap_data {unsigned int pstate_id; int cpufreq_table_idx; int /*<<< orphan*/  hentry; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ frequency; int /*<<< orphan*/  flags; scalar_t__ driver_data; } ;
struct TYPE_3__ {int wof_enabled; int nr_pstates; int max; int nominal; int min; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_BOOST_FREQ ; 
 scalar_t__ CPUFREQ_TABLE_END ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int POWERNV_MAX_PSTATES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 struct pstate_idx_revmap_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 struct device_node* FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,scalar_t__*) ; 
 TYPE_2__* powernv_freqs ; 
 TYPE_1__ powernv_pstate_info ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  pstate_revmap ; 

__attribute__((used)) static int FUNC11(void)
{
	struct device_node *power_mgt;
	int i, nr_pstates = 0;
	const __be32 *pstate_ids, *pstate_freqs;
	u32 len_ids, len_freqs;
	u32 pstate_min, pstate_max, pstate_nominal;
	u32 pstate_turbo, pstate_ultra_turbo;
	int rc = -ENODEV;

	power_mgt = FUNC4("/ibm,opal/power-mgt");
	if (!power_mgt) {
		FUNC10("power-mgt node not found\n");
		return -ENODEV;
	}

	if (FUNC7(power_mgt, "ibm,pstate-min", &pstate_min)) {
		FUNC10("ibm,pstate-min node not found\n");
		goto out;
	}

	if (FUNC7(power_mgt, "ibm,pstate-max", &pstate_max)) {
		FUNC10("ibm,pstate-max node not found\n");
		goto out;
	}

	if (FUNC7(power_mgt, "ibm,pstate-nominal",
				 &pstate_nominal)) {
		FUNC10("ibm,pstate-nominal not found\n");
		goto out;
	}

	if (FUNC7(power_mgt, "ibm,pstate-ultra-turbo",
				 &pstate_ultra_turbo)) {
		powernv_pstate_info.wof_enabled = false;
		goto next;
	}

	if (FUNC7(power_mgt, "ibm,pstate-turbo",
				 &pstate_turbo)) {
		powernv_pstate_info.wof_enabled = false;
		goto next;
	}

	if (pstate_turbo == pstate_ultra_turbo)
		powernv_pstate_info.wof_enabled = false;
	else
		powernv_pstate_info.wof_enabled = true;

next:
	FUNC9("cpufreq pstate min 0x%x nominal 0x%x max 0x%x\n", pstate_min,
		pstate_nominal, pstate_max);
	FUNC9("Workload Optimized Frequency is %s in the platform\n",
		(powernv_pstate_info.wof_enabled) ? "enabled" : "disabled");

	pstate_ids = FUNC5(power_mgt, "ibm,pstate-ids", &len_ids);
	if (!pstate_ids) {
		FUNC10("ibm,pstate-ids not found\n");
		goto out;
	}

	pstate_freqs = FUNC5(power_mgt, "ibm,pstate-frequencies-mhz",
				      &len_freqs);
	if (!pstate_freqs) {
		FUNC10("ibm,pstate-frequencies-mhz not found\n");
		goto out;
	}

	if (len_ids != len_freqs) {
		FUNC10("Entries in ibm,pstate-ids and "
			"ibm,pstate-frequencies-mhz does not match\n");
	}

	nr_pstates = FUNC3(len_ids, len_freqs) / sizeof(u32);
	if (!nr_pstates) {
		FUNC10("No PStates found\n");
		goto out;
	}

	powernv_pstate_info.nr_pstates = nr_pstates;
	FUNC8("NR PStates %d\n", nr_pstates);

	for (i = 0; i < nr_pstates; i++) {
		u32 id = FUNC0(pstate_ids[i]);
		u32 freq = FUNC0(pstate_freqs[i]);
		struct pstate_idx_revmap_data *revmap_data;
		unsigned int key;

		FUNC8("PState id %d freq %d MHz\n", id, freq);
		powernv_freqs[i].frequency = freq * 1000; /* kHz */
		powernv_freqs[i].driver_data = id & 0xFF;

		revmap_data = FUNC2(sizeof(*revmap_data), GFP_KERNEL);
		if (!revmap_data) {
			rc = -ENOMEM;
			goto out;
		}

		revmap_data->pstate_id = id & 0xFF;
		revmap_data->cpufreq_table_idx = i;
		key = (revmap_data->pstate_id) % POWERNV_MAX_PSTATES;
		FUNC1(pstate_revmap, &revmap_data->hentry, key);

		if (id == pstate_max)
			powernv_pstate_info.max = i;
		if (id == pstate_nominal)
			powernv_pstate_info.nominal = i;
		if (id == pstate_min)
			powernv_pstate_info.min = i;

		if (powernv_pstate_info.wof_enabled && id == pstate_turbo) {
			int j;

			for (j = i - 1; j >= (int)powernv_pstate_info.max; j--)
				powernv_freqs[j].flags = CPUFREQ_BOOST_FREQ;
		}
	}

	/* End of list marker entry */
	powernv_freqs[i].frequency = CPUFREQ_TABLE_END;

	FUNC6(power_mgt);
	return 0;
out:
	FUNC6(power_mgt);
	return rc;
}