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
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ RESET_CTRL ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ scc ; 

__attribute__((used)) static int FUNC3(unsigned int cpu, unsigned int cluster)
{
	u32 mask = cluster ?
		  FUNC1(cpu)
		: FUNC0(cpu);

	return !(FUNC2(scc + RESET_CTRL) & mask);
}