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
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int cpu,
			unsigned int *pcpu, unsigned int *pcluster)
{
	unsigned int mpidr;

	mpidr = FUNC1(cpu);
	*pcpu = FUNC0(mpidr, 0);
	*pcluster = FUNC0(mpidr, 1);
}