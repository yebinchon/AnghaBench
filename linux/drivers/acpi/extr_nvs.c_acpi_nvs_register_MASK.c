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
struct nvs_region {int /*<<< orphan*/  node; void* size; void* phys_start; } ;
typedef  void* __u64 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvs_region* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvs_region_list ; 
 int FUNC2 (void*,void*) ; 

int FUNC3(__u64 start, __u64 size)
{
	struct nvs_region *region;

	region = FUNC0(sizeof(*region), GFP_KERNEL);
	if (!region)
		return -ENOMEM;
	region->phys_start = start;
	region->size = size;
	FUNC1(&region->node, &nvs_region_list);

	return FUNC2(start, size);
}