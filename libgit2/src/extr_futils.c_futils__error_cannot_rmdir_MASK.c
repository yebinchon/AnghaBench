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
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int FUNC1(const char *path, const char *filemsg)
{
	if (filemsg)
		FUNC0(GIT_ERROR_OS, "could not remove directory '%s': %s",
				   path, filemsg);
	else
		FUNC0(GIT_ERROR_OS, "could not remove directory '%s'", path);

	return -1;
}