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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  MSR_MAJOR ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  msr_class ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct device *dev;

	dev = FUNC2(msr_class, NULL, FUNC0(MSR_MAJOR, cpu), NULL,
			    "msr%d", cpu);
	return FUNC1(dev);
}