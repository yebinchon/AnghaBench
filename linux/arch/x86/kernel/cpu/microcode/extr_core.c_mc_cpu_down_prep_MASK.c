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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 struct device* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  mc_attr_group ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct device *dev;

	dev = FUNC0(cpu);
	/* Suspend is in progress, only remove the interface */
	FUNC2(&dev->kobj, &mc_attr_group);
	FUNC1("CPU%d removed\n", cpu);

	return 0;
}