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
 int /*<<< orphan*/  IPI_WAKEUP ; 
 int /*<<< orphan*/  boot_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int secondary_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned int cpu, struct task_struct *idle)
{
	/*
	 * set synchronisation state between this boot processor
	 * and the secondary one
	 */
	FUNC2(&boot_lock);

	secondary_release = cpu;
	FUNC1(FUNC0(cpu), IPI_WAKEUP);

	/*
	 * now the secondary core is starting up let it run its
	 * calibrations, then wait for it to finish
	 */
	FUNC3(&boot_lock);
}