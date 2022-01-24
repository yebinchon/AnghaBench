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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static unsigned int FUNC2(unsigned int cpu)
{
	u32 eax, ebx, ecx, edx;

	if (cpu)
		return 0;

	FUNC0(0x80860007, &eax, &ebx, &ecx, &edx);
	FUNC1("cpuid eax is %u\n", eax);

	return eax * 1000;
}