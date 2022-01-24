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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long* shmobile_smp_arg ; 
 unsigned long* shmobile_smp_fn ; 
 int /*<<< orphan*/ * shmobile_smp_mpidr ; 

void FUNC2(unsigned int cpu, unsigned long fn, unsigned long arg)
{
	shmobile_smp_fn[cpu] = 0;
	FUNC1();

	shmobile_smp_mpidr[cpu] = FUNC0(cpu);
	shmobile_smp_fn[cpu] = fn;
	shmobile_smp_arg[cpu] = arg;
	FUNC1();
}