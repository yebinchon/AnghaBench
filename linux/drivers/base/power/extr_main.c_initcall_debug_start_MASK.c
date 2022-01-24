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
struct device {scalar_t__ parent; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,void*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pm_print_times_enabled ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ktime_t FUNC4(struct device *dev, void *cb)
{
	if (!pm_print_times_enabled)
		return 0;

	FUNC0(dev, "calling %pS @ %i, parent: %s\n", cb,
		 FUNC3(current),
		 dev->parent ? FUNC1(dev->parent) : "none");
	return FUNC2();
}