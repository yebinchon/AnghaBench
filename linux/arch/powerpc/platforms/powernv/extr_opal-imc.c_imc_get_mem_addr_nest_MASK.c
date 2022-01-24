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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct imc_pmu {int imc_counter_mmaped; TYPE_1__* mem_info; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vbase; scalar_t__ id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,struct imc_pmu*) ; 
 void* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (struct device_node*,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device_node *node,
				 struct imc_pmu *pmu_ptr,
				 u32 offset)
{
	int nr_chips = 0, i;
	u64 *base_addr_arr, baddr;
	u32 *chipid_arr;

	nr_chips = FUNC3(node, "chip-id");
	if (nr_chips <= 0)
		return -ENODEV;

	base_addr_arr = FUNC1(nr_chips, sizeof(*base_addr_arr), GFP_KERNEL);
	if (!base_addr_arr)
		return -ENOMEM;

	chipid_arr = FUNC1(nr_chips, sizeof(*chipid_arr), GFP_KERNEL);
	if (!chipid_arr) {
		FUNC2(base_addr_arr);
		return -ENOMEM;
	}

	if (FUNC4(node, "chip-id", chipid_arr, nr_chips))
		goto error;

	if (FUNC5(node, "base-addr", base_addr_arr,
								nr_chips))
		goto error;

	pmu_ptr->mem_info = FUNC1(nr_chips + 1, sizeof(*pmu_ptr->mem_info),
				    GFP_KERNEL);
	if (!pmu_ptr->mem_info)
		goto error;

	for (i = 0; i < nr_chips; i++) {
		pmu_ptr->mem_info[i].id = chipid_arr[i];
		baddr = base_addr_arr[i] + offset;
		pmu_ptr->mem_info[i].vbase = FUNC6(baddr);
	}

	pmu_ptr->imc_counter_mmaped = true;
	FUNC0(node, pmu_ptr);
	FUNC2(base_addr_arr);
	FUNC2(chipid_arr);
	return 0;

error:
	FUNC2(base_addr_arr);
	FUNC2(chipid_arr);
	return -1;
}