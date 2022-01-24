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
typedef  int /*<<< orphan*/  time_t ;
struct p_timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC1 (char const*,struct p_timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(const char *path, time_t *when)
{
	struct p_timeval times[2];
	int ret;

	times[0].tv_sec =  times[1].tv_sec  = when ? *when : FUNC2(NULL);
	times[0].tv_usec = times[1].tv_usec = 0;

	ret = FUNC1(path, times);

	return (ret < 0) ? FUNC0(errno, path, "touch") : 0;
}