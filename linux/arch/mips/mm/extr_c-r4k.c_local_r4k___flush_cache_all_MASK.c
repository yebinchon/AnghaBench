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
#define  CPU_BMIPS5000 138 
#define  CPU_LOONGSON2 137 
#define  CPU_LOONGSON3 136 
#define  CPU_R10000 135 
#define  CPU_R12000 134 
#define  CPU_R14000 133 
#define  CPU_R16000 132 
#define  CPU_R4000MC 131 
#define  CPU_R4000SC 130 
#define  CPU_R4400MC 129 
#define  CPU_R4400SC 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static inline void FUNC7(void * args)
{
	switch (FUNC1()) {
	case CPU_LOONGSON2:
	case CPU_R4000SC:
	case CPU_R4000MC:
	case CPU_R4400SC:
	case CPU_R4400MC:
	case CPU_R10000:
	case CPU_R12000:
	case CPU_R14000:
	case CPU_R16000:
		/*
		 * These caches are inclusive caches, that is, if something
		 * is not cached in the S-cache, we know it also won't be
		 * in one of the primary caches.
		 */
		FUNC5();
		break;

	case CPU_LOONGSON3:
		/* Use get_ebase_cpunum() for both NUMA=y/n */
		FUNC6(FUNC2() >> 2);
		break;

	case CPU_BMIPS5000:
		FUNC5();
		FUNC0();
		break;

	default:
		FUNC3();
		FUNC4();
		break;
	}
}