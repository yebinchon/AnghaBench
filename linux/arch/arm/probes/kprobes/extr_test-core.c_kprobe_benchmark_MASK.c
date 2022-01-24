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
struct kprobe {int /*<<< orphan*/  pre_handler; int /*<<< orphan*/ * addr; } ;
typedef  int /*<<< orphan*/  kprobe_opcode_t ;

/* Variables and functions */
 int FUNC0 (void (*) ()) ; 
 int /*<<< orphan*/  benchmark_pre_handler ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct kprobe*) ; 
 int /*<<< orphan*/  FUNC3 (struct kprobe*) ; 

__attribute__((used)) static int FUNC4(void(*fn)(void), unsigned offset)
{
	struct kprobe k = {
		.addr		= (kprobe_opcode_t *)((uintptr_t)fn + offset),
		.pre_handler	= benchmark_pre_handler,
	};

	int ret = FUNC2(&k);
	if (ret < 0) {
		FUNC1("FAIL: register_kprobe failed with %d\n", ret);
		return ret;
	}

	ret = FUNC0(fn);

	FUNC3(&k);
	return ret;
}