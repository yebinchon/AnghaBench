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
struct seq_file {int dummy; } ;
struct hvcall_ppp_data {unsigned long entitlement; unsigned long group_num; unsigned long active_system_procs; unsigned long pool_num; int active_procs_in_pool; unsigned long unallocated_weight; unsigned long weight; unsigned long capped; unsigned long unallocated_entitlement; unsigned long phys_platform_procs; unsigned long max_proc_cap_avail; unsigned long entitled_proc_cap_avail; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct hvcall_ppp_data*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct seq_file *m)
{
	struct hvcall_ppp_data ppp_data;
	struct device_node *root;
	const __be32 *perf_level;
	int rc;

	rc = FUNC2(&ppp_data);
	if (rc)
		return;

	FUNC8(m, "partition_entitled_capacity=%lld\n",
	           ppp_data.entitlement);
	FUNC8(m, "group=%d\n", ppp_data.group_num);
	FUNC8(m, "system_active_processors=%d\n",
	           ppp_data.active_system_procs);

	/* pool related entries are appropriate for shared configs */
	if (FUNC4(FUNC1())) {
		unsigned long pool_idle_time, pool_procs;

		FUNC8(m, "pool=%d\n", ppp_data.pool_num);

		/* report pool_capacity in percentage */
		FUNC8(m, "pool_capacity=%d\n",
			   ppp_data.active_procs_in_pool * 100);

		FUNC3(&pool_idle_time, &pool_procs);
		FUNC8(m, "pool_idle_time=%ld\n", pool_idle_time);
		FUNC8(m, "pool_num_procs=%ld\n", pool_procs);
	}

	FUNC8(m, "unallocated_capacity_weight=%d\n",
		   ppp_data.unallocated_weight);
	FUNC8(m, "capacity_weight=%d\n", ppp_data.weight);
	FUNC8(m, "capped=%d\n", ppp_data.capped);
	FUNC8(m, "unallocated_capacity=%lld\n",
		   ppp_data.unallocated_entitlement);

	/* The last bits of information returned from h_get_ppp are only
	 * valid if the ibm,partition-performance-parameters-level
	 * property is >= 1.
	 */
	root = FUNC5("/");
	if (root) {
		perf_level = FUNC6(root,
				"ibm,partition-performance-parameters-level",
					     NULL);
		if (perf_level && (FUNC0(perf_level) >= 1)) {
			FUNC8(m,
			    "physical_procs_allocated_to_virtualization=%d\n",
				   ppp_data.phys_platform_procs);
			FUNC8(m, "max_proc_capacity_available=%d\n",
				   ppp_data.max_proc_cap_avail);
			FUNC8(m, "entitled_proc_capacity_available=%d\n",
				   ppp_data.entitled_proc_cap_avail);
		}

		FUNC7(root);
	}
}