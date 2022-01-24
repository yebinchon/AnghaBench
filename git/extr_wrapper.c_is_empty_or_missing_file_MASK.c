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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

int FUNC3(const char *filename)
{
	struct stat st;

	if (FUNC2(filename, &st) < 0) {
		if (errno == ENOENT)
			return 1;
		FUNC1(FUNC0("could not stat %s"), filename);
	}

	return !st.st_size;
}