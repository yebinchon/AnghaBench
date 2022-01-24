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
struct hvcall_mpp_data {int entitled_mem; int mapped_mem; int group_num; int pool_num; int mem_weight; int unallocated_mem_weight; int unallocated_entitlement; int pool_size; int loan_request; int backing_mem; } ;

/* Variables and functions */
 int FUNC0 (struct hvcall_mpp_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m)
{
	struct hvcall_mpp_data mpp_data;
	int rc;

	rc = FUNC0(&mpp_data);
	if (rc)
		return;

	FUNC1(m, "entitled_memory=%ld\n", mpp_data.entitled_mem);

	if (mpp_data.mapped_mem != -1)
		FUNC1(m, "mapped_entitled_memory=%ld\n",
		           mpp_data.mapped_mem);

	FUNC1(m, "entitled_memory_group_number=%d\n", mpp_data.group_num);
	FUNC1(m, "entitled_memory_pool_number=%d\n", mpp_data.pool_num);

	FUNC1(m, "entitled_memory_weight=%d\n", mpp_data.mem_weight);
	FUNC1(m, "unallocated_entitled_memory_weight=%d\n",
	           mpp_data.unallocated_mem_weight);
	FUNC1(m, "unallocated_io_mapping_entitlement=%ld\n",
	           mpp_data.unallocated_entitlement);

	if (mpp_data.pool_size != -1)
		FUNC1(m, "entitled_memory_pool_size=%ld bytes\n",
		           mpp_data.pool_size);

	FUNC1(m, "entitled_memory_loan_request=%ld\n",
	           mpp_data.loan_request);

	FUNC1(m, "backing_memory=%ld bytes\n", mpp_data.backing_mem);
}