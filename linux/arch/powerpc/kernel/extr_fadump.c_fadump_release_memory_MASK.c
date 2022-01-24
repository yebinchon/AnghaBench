#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_8__ {scalar_t__ reserve_dump_area_start; scalar_t__ reserve_dump_area_size; } ;
struct TYPE_7__ {int mem_range_cnt; TYPE_1__* mem_ranges; } ;
struct TYPE_6__ {scalar_t__ base; scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_4__ fw_dump ; 
 TYPE_2__ reserved_mrange_info ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(u64 begin, u64 end)
{
	u64 ra_start, ra_end, tstart;
	int i, ret;

	FUNC2();

	ra_start = fw_dump.reserve_dump_area_start;
	ra_end = ra_start + fw_dump.reserve_dump_area_size;

	/*
	 * Add reserved dump area to reserved ranges list
	 * and exclude all these ranges while releasing memory.
	 */
	ret = FUNC0(&reserved_mrange_info, ra_start, ra_end);
	if (ret != 0) {
		/*
		 * Not enough memory to setup reserved ranges but the system is
		 * running shortage of memory. So, release all the memory except
		 * Reserved dump area (reused for next fadump registration).
		 */
		if (begin < ra_end && end > ra_start) {
			if (begin < ra_start)
				FUNC1(begin, ra_start);
			if (end > ra_end)
				FUNC1(ra_end, end);
		} else
			FUNC1(begin, end);

		return;
	}

	/* Get the reserved ranges list in order first. */
	FUNC3(&reserved_mrange_info);

	/* Exclude reserved ranges and release remaining memory */
	tstart = begin;
	for (i = 0; i < reserved_mrange_info.mem_range_cnt; i++) {
		ra_start = reserved_mrange_info.mem_ranges[i].base;
		ra_end = ra_start + reserved_mrange_info.mem_ranges[i].size;

		if (tstart >= ra_end)
			continue;

		if (tstart < ra_start)
			FUNC1(tstart, ra_start);
		tstart = ra_end;
	}

	if (tstart < end)
		FUNC1(tstart, end);
}