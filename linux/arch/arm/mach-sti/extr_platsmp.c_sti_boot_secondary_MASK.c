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
struct task_struct {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_strt_ptr ; 
 int /*<<< orphan*/  secondary_startup ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, struct task_struct *idle)
{
	unsigned long entry_pa = FUNC0(secondary_startup);

	/*
	 * Secondary CPU is initialised and started by a U-BOOTROM firmware.
	 * Secondary CPU is spinning and waiting for a write at cpu_strt_ptr.
	 * Writing secondary_startup address at cpu_strt_ptr makes it to
	 * jump directly to secondary_startup().
	 */
	FUNC1(entry_pa, cpu_strt_ptr);

	/* wmb so that data is actually written before cache flush is done */
	FUNC2();
	FUNC3(cpu_strt_ptr);

	return 0;
}