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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(int syserr, const char *fmt, va_list arg_ptr)
{
	int save = errno;

	FUNC0(0);
	FUNC1(stderr, "[%s] Error: ", progname);
	FUNC3(stderr, fmt, arg_ptr);
	if (syserr != 0) {
		FUNC1(stderr, ": %s", FUNC2(save));
	}
	FUNC1(stderr, "\n");
}