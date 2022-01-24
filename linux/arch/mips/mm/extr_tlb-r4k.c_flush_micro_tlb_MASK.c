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
#define  CPU_LOONGSON2 129 
#define  CPU_LOONGSON3 128 
 int LOONGSON_DIAG_DTLB ; 
 int LOONGSON_DIAG_ITLB ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(void)
{
	switch (FUNC0()) {
	case CPU_LOONGSON2:
		FUNC1(LOONGSON_DIAG_ITLB);
		break;
	case CPU_LOONGSON3:
		FUNC1(LOONGSON_DIAG_ITLB | LOONGSON_DIAG_DTLB);
		break;
	default:
		break;
	}
}