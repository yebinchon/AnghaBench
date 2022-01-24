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

/* Variables and functions */
#define  CPU_LOONGSON2 128 
 int /*<<< orphan*/  R4600_HIT_CACHEOP_WAR_IMPL ; 
 unsigned int R4K_INDEX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  cpu_has_ic_fills_f_dc ; 
 unsigned long dcache_size ; 
 unsigned long icache_size ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static inline void FUNC8(unsigned long start,
						  unsigned long end,
						  unsigned int type,
						  bool user)
{
	if (!cpu_has_ic_fills_f_dc) {
		if (type == R4K_INDEX ||
		    (type & R4K_INDEX && end - start >= dcache_size)) {
			FUNC6();
		} else {
			R4600_HIT_CACHEOP_WAR_IMPL;
			if (user)
				FUNC3(start, end);
			else
				FUNC0(start, end);
		}
	}

	if (type == R4K_INDEX ||
	    (type & R4K_INDEX && end - start > icache_size))
		FUNC7();
	else {
		switch (FUNC2()) {
		case CPU_LOONGSON2:
			FUNC5(start, end);
			break;

		default:
			if (user)
				FUNC4(start, end);
			else
				FUNC1(start, end);
			break;
		}
	}
}