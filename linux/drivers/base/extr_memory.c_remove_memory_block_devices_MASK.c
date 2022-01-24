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
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 struct memory_block* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  mem_sysfs_mutex ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct memory_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct memory_block*) ; 

void FUNC10(unsigned long start, unsigned long size)
{
	const unsigned long start_block_id = FUNC7(FUNC1(start));
	const unsigned long end_block_id = FUNC7(FUNC1(start + size));
	struct memory_block *mem;
	unsigned long block_id;

	if (FUNC2(!FUNC0(start, FUNC4()) ||
			 !FUNC0(size, FUNC4())))
		return;

	FUNC5(&mem_sysfs_mutex);
	for (block_id = start_block_id; block_id != end_block_id; block_id++) {
		mem = FUNC3(block_id);
		if (FUNC2(!mem))
			continue;
		mem->section_count = 0;
		FUNC9(mem);
		FUNC8(mem);
	}
	FUNC6(&mem_sysfs_mutex);
}