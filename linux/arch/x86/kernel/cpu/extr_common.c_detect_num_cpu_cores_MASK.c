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
struct cpuinfo_x86 {int x86_max_cores; int cpuid_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 

void FUNC2(struct cpuinfo_x86 *c)
{
	unsigned int eax, ebx, ecx, edx;

	c->x86_max_cores = 1;
	if (!FUNC0(CONFIG_SMP) || c->cpuid_level < 4)
		return;

	FUNC1(4, 0, &eax, &ebx, &ecx, &edx);
	if (eax & 0x1f)
		c->x86_max_cores = (eax >> 26) + 1;
}