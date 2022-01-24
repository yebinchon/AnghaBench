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
struct vcpu_set_singleshot_timer {scalar_t__ flags; int /*<<< orphan*/  timeout_abs_ns; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vcpu_set_singleshot_timer*) ; 
 int /*<<< orphan*/  VCPUOP_set_singleshot_timer ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(unsigned long delta,
				     struct clock_event_device *evt)
{
	int cpu = FUNC5();
	struct vcpu_set_singleshot_timer single;
	int ret;

	FUNC2(!FUNC3(evt));

	single.timeout_abs_ns = FUNC4(delta);
	/* Get an event anyway, even if the timeout is already expired */
	single.flags = 0;

	ret = FUNC1(VCPUOP_set_singleshot_timer, FUNC6(cpu),
				 &single);
	FUNC0(ret != 0);

	return ret;
}