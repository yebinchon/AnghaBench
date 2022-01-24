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
typedef  int u64 ;

/* Variables and functions */
 int NOTIFY_OK ; 
 int NOTIFY_STOP_MASK ; 
 int* cache_err_dcache ; 
 int /*<<< orphan*/  co_cache_error_chain ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long long FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long val)
{
	int rv = FUNC2(&co_cache_error_chain, val, NULL);
	if ((rv & ~NOTIFY_STOP_MASK) != NOTIFY_OK) {
		u64 dcache_err;
		unsigned long coreid = FUNC0();
		u64 icache_err = FUNC5();

		if (val) {
			dcache_err = cache_err_dcache[coreid];
			cache_err_dcache[coreid] = 0;
		} else {
			dcache_err = FUNC4();
		}

		FUNC1("Core%lu: Cache error exception:\n", coreid);
		FUNC1("cp0_errorepc == %lx\n", FUNC3());
		if (icache_err & 1) {
			FUNC1("CacheErr (Icache) == %llx\n",
			       (unsigned long long)icache_err);
			FUNC6(0);
		}
		if (dcache_err & 1) {
			FUNC1("CacheErr (Dcache) == %llx\n",
			       (unsigned long long)dcache_err);
		}
	}
}