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
struct async {int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void**) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct async *async)
{
#ifdef NO_PTHREADS
	return wait_or_whine(async->pid, "child process", 0);
#else
	void *ret = (void *)(intptr_t)(-1);

	if (FUNC1(async->tid, &ret))
		FUNC0("pthread_join failed");
	return (int)(intptr_t)ret;
#endif
}