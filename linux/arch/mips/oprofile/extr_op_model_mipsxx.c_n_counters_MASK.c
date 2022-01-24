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
#define  CPU_R10000 131 
#define  CPU_R12000 130 
#define  CPU_R14000 129 
#define  CPU_R16000 128 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static inline int FUNC2(void)
{
	int counters;

	switch (FUNC1()) {
	case CPU_R10000:
		counters = 2;
		break;

	case CPU_R12000:
	case CPU_R14000:
	case CPU_R16000:
		counters = 4;
		break;

	default:
		counters = FUNC0();
	}

	return counters;
}