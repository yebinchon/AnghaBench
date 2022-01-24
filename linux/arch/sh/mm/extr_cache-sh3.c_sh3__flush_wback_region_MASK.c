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
struct TYPE_3__ {unsigned long ways; unsigned long entry_mask; scalar_t__ way_incr; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 unsigned long CACHE_PHYSADDR_MASK ; 
 int L1_CACHE_BYTES ; 
 unsigned long SH_CACHE_UPDATED ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 TYPE_2__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 

__attribute__((used)) static void FUNC5(void *start, int size)
{
	unsigned long v, j;
	unsigned long begin, end;
	unsigned long flags;

	begin = (unsigned long)start & ~(L1_CACHE_BYTES-1);
	end = ((unsigned long)start + size + L1_CACHE_BYTES-1)
		& ~(L1_CACHE_BYTES-1);

	for (v = begin; v < end; v+=L1_CACHE_BYTES) {
		unsigned long addrstart = CACHE_OC_ADDRESS_ARRAY;
		for (j = 0; j < current_cpu_data.dcache.ways; j++) {
			unsigned long data, addr, p;

			p = FUNC0(v);
			addr = addrstart | (v & current_cpu_data.dcache.entry_mask);
			FUNC4(flags);
			data = FUNC1(addr);

			if ((data & CACHE_PHYSADDR_MASK) ==
			    (p & CACHE_PHYSADDR_MASK)) {
				data &= ~SH_CACHE_UPDATED;
				FUNC2(data, addr);
				FUNC3(flags);
				break;
			}
			FUNC3(flags);
			addrstart += current_cpu_data.dcache.way_incr;
		}
	}
}