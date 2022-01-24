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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ MEM_GOING_OFFLINE ; 
 scalar_t__ MEM_OFFLINE ; 
 scalar_t__ MEM_ONLINE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  change_memblock_state ; 
 int /*<<< orphan*/  check_memblock_online ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long const,unsigned long const,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(u32 nid, u64 start_pfn, u64 nr_pages)
{
	const unsigned long start = FUNC0(start_pfn);
	const unsigned long size = FUNC0(nr_pages);

	if (FUNC2(start, size, NULL, check_memblock_online))
		return false;

	FUNC2(start, size, (void *)MEM_GOING_OFFLINE,
			   change_memblock_state);

	if (FUNC1(start_pfn, nr_pages)) {
		FUNC2(start, size, (void *)MEM_ONLINE,
				   change_memblock_state);
		return false;
	}

	FUNC2(start, size, (void *)MEM_OFFLINE,
			   change_memblock_state);


	return true;
}