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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

void FUNC6(const char *dir, int share)
{
	if (FUNC4(dir, 0777) < 0) {
		if (errno != EEXIST) {
			FUNC5(dir);
			FUNC3(1);
		}
	}
	else if (share && FUNC1(dir))
		FUNC2(FUNC0("Could not make %s writable by group"), dir);
}