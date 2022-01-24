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
struct memory_block {scalar_t__ section_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM_OFFLINE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 struct memory_block* FUNC3 (unsigned long) ; 
 int FUNC4 (struct memory_block**,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem_sysfs_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ sections_per_block ; 
 int /*<<< orphan*/  FUNC9 (struct memory_block*) ; 

int FUNC10(unsigned long start, unsigned long size)
{
	const unsigned long start_block_id = FUNC8(FUNC1(start));
	unsigned long end_block_id = FUNC8(FUNC1(start + size));
	struct memory_block *mem;
	unsigned long block_id;
	int ret = 0;

	if (FUNC2(!FUNC0(start, FUNC5()) ||
			 !FUNC0(size, FUNC5())))
		return -EINVAL;

	FUNC6(&mem_sysfs_mutex);
	for (block_id = start_block_id; block_id != end_block_id; block_id++) {
		ret = FUNC4(&mem, block_id, MEM_OFFLINE);
		if (ret)
			break;
		mem->section_count = sections_per_block;
	}
	if (ret) {
		end_block_id = block_id;
		for (block_id = start_block_id; block_id != end_block_id;
		     block_id++) {
			mem = FUNC3(block_id);
			mem->section_count = 0;
			FUNC9(mem);
		}
	}
	FUNC7(&mem_sysfs_mutex);
	return ret;
}