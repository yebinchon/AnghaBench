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
struct memory_block {int section_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (struct memory_block**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 unsigned long sections_per_block ; 

__attribute__((used)) static int FUNC3(unsigned long base_section_nr)
{
	int ret, section_count = 0;
	struct memory_block *mem;
	unsigned long nr;

	for (nr = base_section_nr; nr < base_section_nr + sections_per_block;
	     nr++)
		if (FUNC2(nr))
			section_count++;

	if (section_count == 0)
		return 0;
	ret = FUNC1(&mem, FUNC0(base_section_nr),
				MEM_ONLINE);
	if (ret)
		return ret;
	mem->section_count = section_count;
	return 0;
}