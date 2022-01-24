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
 scalar_t__ PPU_PROFILING ; 
 scalar_t__ SPU_PROFILING_EVENTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ profiling_mode ; 

__attribute__((used)) static void FUNC3(void)
{
	if (profiling_mode == PPU_PROFILING)
		FUNC0();
	else if (profiling_mode == SPU_PROFILING_EVENTS)
		FUNC2();
	else
		FUNC1();
}