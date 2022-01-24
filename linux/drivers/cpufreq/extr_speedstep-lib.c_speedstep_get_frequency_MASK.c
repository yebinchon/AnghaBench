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
typedef  enum speedstep_processor { ____Placeholder_speedstep_processor } speedstep_processor ;

/* Variables and functions */
#define  SPEEDSTEP_CPU_P4D 134 
#define  SPEEDSTEP_CPU_P4M 133 
#define  SPEEDSTEP_CPU_PCORE 132 
#define  SPEEDSTEP_CPU_PIII_C 131 
#define  SPEEDSTEP_CPU_PIII_C_EARLY 130 
#define  SPEEDSTEP_CPU_PIII_T 129 
#define  SPEEDSTEP_CPU_PM 128 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 

unsigned int FUNC4(enum speedstep_processor processor)
{
	switch (processor) {
	case SPEEDSTEP_CPU_PCORE:
		return FUNC3();
	case SPEEDSTEP_CPU_PM:
		return FUNC2();
	case SPEEDSTEP_CPU_P4D:
	case SPEEDSTEP_CPU_P4M:
		return FUNC1();
	case SPEEDSTEP_CPU_PIII_T:
	case SPEEDSTEP_CPU_PIII_C:
	case SPEEDSTEP_CPU_PIII_C_EARLY:
		return FUNC0(processor);
	default:
		return 0;
	};
	return 0;
}