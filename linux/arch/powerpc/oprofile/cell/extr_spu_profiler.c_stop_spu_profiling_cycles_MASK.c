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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  samples ; 
 scalar_t__ spu_prof_running ; 
 int /*<<< orphan*/  timer ; 

void FUNC3(void)
{
	spu_prof_running = 0;
	FUNC0(&timer);
	FUNC1(samples);
	FUNC2("SPU_PROF: stop_spu_profiling_cycles issued\n");
}