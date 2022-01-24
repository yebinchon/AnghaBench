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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned int cpu, unsigned int message)
{
	unsigned long addr = 0xfe410070 + (cpu * 4);

	FUNC0(cpu >= 4);

	FUNC1(1 << (message << 2), addr); /* C0INTICI..CnINTICI */
}