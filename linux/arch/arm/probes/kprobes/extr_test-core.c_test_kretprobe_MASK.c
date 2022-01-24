#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kprobe_opcode_t ;
struct TYPE_5__ {scalar_t__ flags; int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ kp; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (long (*) (long,long),int) ; 
 scalar_t__ kretprobe_handler_called ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ test_func_instance ; 
 TYPE_2__ the_kretprobe ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(long (*func)(long, long))
{
	int ret;

	the_kretprobe.kp.addr = (kprobe_opcode_t *)func;
	ret = FUNC2(&the_kretprobe);
	if (ret < 0) {
		FUNC1("FAIL: register_kretprobe failed with %d\n", ret);
		return ret;
	}

	ret = FUNC0(func, true);

	FUNC3(&the_kretprobe);
	the_kretprobe.kp.flags = 0; /* Clear disable flag to allow reuse */

	if (!ret)
		return -EINVAL;
	if (kretprobe_handler_called != test_func_instance) {
		FUNC1("FAIL: kretprobe handler not called\n");
		return -EINVAL;
	}
	if (!FUNC0(func, false))
		return -EINVAL;
	if (kretprobe_handler_called == test_func_instance) {
		FUNC1("FAIL: kretprobe called after unregistering\n");
		return -EINVAL;
	}

	return 0;
}