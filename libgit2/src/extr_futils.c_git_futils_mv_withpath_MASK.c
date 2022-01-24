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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

int FUNC3(const char *from, const char *to, const mode_t dirmode)
{
	if (FUNC1(to, dirmode) < 0)
		return -1;

	if (FUNC2(from, to) < 0) {
		FUNC0(GIT_ERROR_OS, "failed to rename '%s' to '%s'", from, to);
		return -1;
	}

	return 0;
}