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
struct flush_icache_range_args {unsigned long start; unsigned long end; int type; int user; } ;

/* Variables and functions */
 int R4K_HIT ; 
 int R4K_INDEX ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 scalar_t__ dcache_size ; 
 unsigned long icache_size ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  local_r4k_flush_icache_range_ipi ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct flush_icache_range_args*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(unsigned long start, unsigned long end,
				     bool user)
{
	struct flush_icache_range_args args;
	unsigned long size, cache_size;

	args.start = start;
	args.end = end;
	args.type = R4K_HIT | R4K_INDEX;
	args.user = user;

	/*
	 * Indexed cache ops require an SMP call.
	 * Consider if that can or should be avoided.
	 */
	FUNC1();
	if (FUNC4(R4K_INDEX) && !FUNC4(R4K_HIT)) {
		/*
		 * If address-based cache ops don't require an SMP call, then
		 * use them exclusively for small flushes.
		 */
		size = end - start;
		cache_size = icache_size;
		if (!cpu_has_ic_fills_f_dc) {
			size *= 2;
			cache_size += dcache_size;
		}
		if (size <= cache_size)
			args.type &= ~R4K_INDEX;
	}
	FUNC3(args.type, local_r4k_flush_icache_range_ipi, &args);
	FUNC2();
	FUNC0();
}