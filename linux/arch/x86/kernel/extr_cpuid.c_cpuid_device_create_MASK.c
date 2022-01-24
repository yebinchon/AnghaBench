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
 int /*<<< orphan*/  CPUID_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  cpuid_class ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct device *dev;

	dev = FUNC2(cpuid_class, NULL, FUNC0(CPUID_MAJOR, cpu), NULL,
			    "cpu%d", cpu);
	return FUNC1(dev);
}