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
struct memory_block {unsigned long start_section_nr; unsigned long state; int /*<<< orphan*/  nid; int /*<<< orphan*/  phys_device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct memory_block* FUNC1 (unsigned long) ; 
 struct memory_block* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct memory_block*) ; 
 unsigned long FUNC5 (unsigned long) ; 
 unsigned long sections_per_block ; 

__attribute__((used)) static int FUNC6(struct memory_block **memory,
			     unsigned long block_id, unsigned long state)
{
	struct memory_block *mem;
	unsigned long start_pfn;
	int ret = 0;

	mem = FUNC1(block_id);
	if (mem) {
		FUNC3(&mem->dev);
		return -EEXIST;
	}
	mem = FUNC2(sizeof(*mem), GFP_KERNEL);
	if (!mem)
		return -ENOMEM;

	mem->start_section_nr = block_id * sections_per_block;
	mem->state = state;
	start_pfn = FUNC5(mem->start_section_nr);
	mem->phys_device = FUNC0(start_pfn);
	mem->nid = NUMA_NO_NODE;

	ret = FUNC4(mem);

	*memory = mem;
	return ret;
}