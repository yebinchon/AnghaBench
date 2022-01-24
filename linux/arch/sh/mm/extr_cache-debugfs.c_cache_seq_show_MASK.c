#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ private; } ;
struct cache_info {unsigned int sets; unsigned int entry_shift; unsigned int ways; scalar_t__ way_incr; scalar_t__ linesz; } ;
struct TYPE_2__ {struct cache_info icache; struct cache_info dcache; } ;

/* Variables and functions */
 unsigned long CACHE_IC_ADDRESS_ARRAY ; 
 unsigned long CACHE_OC_ADDRESS_ARRAY ; 
 unsigned int CACHE_TYPE_DCACHE ; 
 unsigned long CCR_CACHE_ENABLE ; 
 unsigned long CCR_CACHE_ORA ; 
 unsigned long SH_CCR ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct seq_file *file, void *iter)
{
	unsigned int cache_type = (unsigned int)file->private;
	struct cache_info *cache;
	unsigned int waysize, way;
	unsigned long ccr;
	unsigned long addrstart = 0;

	/*
	 * Go uncached immediately so we don't skew the results any
	 * more than we already are..
	 */
	FUNC2();

	ccr = FUNC0(SH_CCR);
	if ((ccr & CCR_CACHE_ENABLE) == 0) {
		FUNC1();

		FUNC3(file, "disabled\n");
		return 0;
	}

	if (cache_type == CACHE_TYPE_DCACHE) {
		addrstart = CACHE_OC_ADDRESS_ARRAY;
		cache = &current_cpu_data.dcache;
	} else {
		addrstart = CACHE_IC_ADDRESS_ARRAY;
		cache = &current_cpu_data.icache;
	}

	waysize = cache->sets;

	/*
	 * If the OC is already in RAM mode, we only have
	 * half of the entries to consider..
	 */
	if ((ccr & CCR_CACHE_ORA) && cache_type == CACHE_TYPE_DCACHE)
		waysize >>= 1;

	waysize <<= cache->entry_shift;

	for (way = 0; way < cache->ways; way++) {
		unsigned long addr;
		unsigned int line;

		FUNC3(file, "-----------------------------------------\n");
		FUNC3(file, "Way %d\n", way);
		FUNC3(file, "-----------------------------------------\n");

		for (addr = addrstart, line = 0;
		     addr < addrstart + waysize;
		     addr += cache->linesz, line++) {
			unsigned long data = FUNC0(addr);

			/* Check the V bit, ignore invalid cachelines */
			if ((data & 1) == 0)
				continue;

			/* U: Dirty, cache tag is 10 bits up */
			FUNC3(file, "%3d: %c 0x%lx\n",
				   line, data & 2 ? 'U' : ' ',
				   data & 0x1ffffc00);
		}

		addrstart += cache->way_incr;
	}

	FUNC1();

	return 0;
}