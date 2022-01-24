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
typedef  int /*<<< orphan*/  timestamp_t ;
struct date_mode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct date_mode*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int,struct date_mode*) ; 

__attribute__((used)) static void FUNC5(const char **argv, const char *format)
{
	struct date_mode mode;

	FUNC1(format, &mode);
	for (; *argv; argv++) {
		char *arg;
		timestamp_t t;
		int tz;

		/*
		 * Do not use our normal timestamp parsing here, as the point
		 * is to test the formatting code in isolation.
		 */
		t = FUNC2(*argv, &arg, 10);
		while (*arg == ' ')
			arg++;
		tz = FUNC0(arg);

		FUNC3("%s -> %s\n", *argv, FUNC4(t, tz, &mode));
	}
}