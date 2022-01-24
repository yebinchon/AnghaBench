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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (long (*) (long,long)) ; 
 int FUNC2 (long (*) (long,long)) ; 

__attribute__((used)) static int FUNC3(long (*func)(long, long))
{
	int ret;

	FUNC0("    kprobe\n");
	ret = FUNC1(func);
	if (ret < 0)
		return ret;

	FUNC0("    kretprobe\n");
	ret = FUNC2(func);
	if (ret < 0)
		return ret;

	return 0;
}