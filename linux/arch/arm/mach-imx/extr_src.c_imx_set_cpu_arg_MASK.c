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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ SRC_GPR1 ; 
 int FUNC0 (int) ; 
 scalar_t__ src_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(int cpu, u32 arg)
{
	cpu = FUNC0(cpu);
	FUNC1(arg, src_base + SRC_GPR1 + cpu * 8 + 4);
}