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
struct TYPE_3__ {unsigned long ways; unsigned long sets; unsigned long entry_shift; scalar_t__ way_incr; scalar_t__ linesz; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;

/* Variables and functions */
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 unsigned long SH_CACHE_UPDATED ; 
 unsigned long SH_CACHE_VALID ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long phys)
{
	unsigned long ways, waysize, addrstart;
	unsigned long flags;

	phys |= SH_CACHE_VALID;

	/*
	 * Here, phys is the physical address of the page. We check all the
	 * tags in the cache for those with the same page number as this page
	 * (by masking off the lowest 2 bits of the 19-bit tag; these bits are
	 * derived from the offset within in the 4k page). Matching valid
	 * entries are invalidated.
	 *
	 * Since 2 bits of the cache index are derived from the virtual page
	 * number, knowing this would reduce the number of cache entries to be
	 * searched by a factor of 4. However this function exists to deal with
	 * potential cache aliasing, therefore the optimisation is probably not
	 * possible.
	 */
	FUNC5(flags);
	FUNC3();

	ways = current_cpu_data.dcache.ways;
	waysize = current_cpu_data.dcache.sets;
	waysize <<= current_cpu_data.dcache.entry_shift;

	addrstart = CACHE_OC_ADDRESS_ARRAY;

	do {
		unsigned long addr;

		for (addr = addrstart;
		     addr < addrstart + waysize;
		     addr += current_cpu_data.dcache.linesz) {
			unsigned long data;

			data = FUNC0(addr) & (0x1ffffC00 | SH_CACHE_VALID);
		        if (data == phys) {
				data &= ~(SH_CACHE_VALID | SH_CACHE_UPDATED);
				FUNC1(data, addr);
			}
		}

		addrstart += current_cpu_data.dcache.way_incr;
	} while (--ways);

	FUNC2();
	FUNC4(flags);
}