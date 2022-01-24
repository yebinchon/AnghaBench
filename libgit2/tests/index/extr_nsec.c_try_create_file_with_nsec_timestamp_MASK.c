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
struct stat {scalar_t__ st_mtime_nsec; scalar_t__ st_ctime_nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static bool FUNC3(const char *path)
{
	struct stat st;
	int try;

	/* retry a few times to avoid nanos *actually* equal 0 race condition */
	for (try = 0; try < 3; try++) {
		FUNC0(path, "This is hopefully a file with nanoseconds!");

		FUNC1(FUNC2(path, &st));

		if (st.st_ctime_nsec && st.st_mtime_nsec)
			return true;
	}

	return false;
}