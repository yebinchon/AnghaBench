#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ways; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_OC_ADDRESS_ARRAY ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(void *start, int size)
{
	unsigned long v;
	unsigned long begin, end;
	unsigned long flags;

	begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
	end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
		& ~(L1_CACHE_BYTES-1);

	FUNC3(flags);
	FUNC1();

	for (v = begin; v < end; v+=L1_CACHE_BYTES) {
#ifdef CONFIG_CACHE_WRITEBACK
		int way;
		int nr_ways = current_cpu_data.dcache.ways;
		for (way = 0; way < nr_ways; way++)
			sh2a_flush_oc_line(v, way);
#endif
		FUNC5(CACHE_OC_ADDRESS_ARRAY, v);
	}

	FUNC0();
	FUNC2(flags);
}