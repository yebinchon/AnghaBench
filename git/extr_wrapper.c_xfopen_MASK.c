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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 

FILE *FUNC3(const char *path, const char *mode)
{
	for (;;) {
		FILE *fp = FUNC2(path, mode);
		if (fp)
			return fp;
		if (errno == EINTR)
			continue;

		if (*mode && mode[1] == '+')
			FUNC1(FUNC0("could not open '%s' for reading and writing"), path);
		else if (*mode == 'w' || *mode == 'a')
			FUNC1(FUNC0("could not open '%s' for writing"), path);
		else
			FUNC1(FUNC0("could not open '%s' for reading"), path);
	}
}