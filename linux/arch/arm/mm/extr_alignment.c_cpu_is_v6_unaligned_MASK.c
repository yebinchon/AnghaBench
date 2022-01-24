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
 scalar_t__ CPU_ARCH_ARMv6 ; 
 int CR_U ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static bool FUNC2(void)
{
	return FUNC0() >= CPU_ARCH_ARMv6 && FUNC1() & CR_U;
}