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
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,void*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm_print_times_enabled ; 

__attribute__((used)) static void FUNC4(struct device *dev, ktime_t calltime,
				  void *cb, int error)
{
	ktime_t rettime;
	s64 nsecs;

	if (!pm_print_times_enabled)
		return;

	rettime = FUNC1();
	nsecs = (s64) FUNC3(FUNC2(rettime, calltime));

	FUNC0(dev, "%pS returned %d after %Ld usecs\n", cb, error,
		 (unsigned long long)nsecs >> 10);
}