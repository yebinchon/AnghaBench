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
 int DO_GENERIC_SYNC ; 
 scalar_t__ SPU_PROFILING_CYCLES ; 
 scalar_t__ SPU_PROFILING_EVENTS ; 
 scalar_t__ profiling_mode ; 
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(void)
{
	if ((profiling_mode == SPU_PROFILING_CYCLES) ||
	    (profiling_mode == SPU_PROFILING_EVENTS))
		return FUNC0();
	else
		return DO_GENERIC_SYNC;
}