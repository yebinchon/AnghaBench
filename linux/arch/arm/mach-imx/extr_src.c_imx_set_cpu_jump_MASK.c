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
 scalar_t__ SRC_GPR1 ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int) ; 
 scalar_t__ src_base ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(int cpu, void *jump_addr)
{
	cpu = FUNC1(cpu);
	FUNC2(FUNC0(jump_addr),
		       src_base + SRC_GPR1 + cpu * 8);
}