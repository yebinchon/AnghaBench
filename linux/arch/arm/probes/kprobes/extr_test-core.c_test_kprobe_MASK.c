#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kprobe_opcode_t ;
struct TYPE_4__ {scalar_t__ flags; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (long (*) (long,long),int) ; 
 scalar_t__ post_handler_called ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ pre_handler_called ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ test_func_instance ; 
 TYPE_1__ the_kprobe ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(long (*func)(long, long))
{
	int ret;

	the_kprobe.addr = (kprobe_opcode_t *)func;
	ret = FUNC2(&the_kprobe);
	if (ret < 0) {
		FUNC1("FAIL: register_kprobe failed with %d\n", ret);
		return ret;
	}

	ret = FUNC0(func, true);

	FUNC3(&the_kprobe);
	the_kprobe.flags = 0; /* Clear disable flag to allow reuse */

	if (!ret)
		return -EINVAL;
	if (pre_handler_called != test_func_instance) {
		FUNC1("FAIL: kprobe pre_handler not called\n");
		return -EINVAL;
	}
	if (post_handler_called != test_func_instance) {
		FUNC1("FAIL: kprobe post_handler not called\n");
		return -EINVAL;
	}
	if (!FUNC0(func, false))
		return -EINVAL;
	if (pre_handler_called == test_func_instance ||
				post_handler_called == test_func_instance) {
		FUNC1("FAIL: probe called after unregistering\n");
		return -EINVAL;
	}

	return 0;
}