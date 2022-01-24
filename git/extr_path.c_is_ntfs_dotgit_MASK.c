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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

int FUNC3(const char *name)
{
	size_t len;

	for (len = 0; ; len++)
		if (!name[len] || name[len] == '\\' || FUNC0(name[len])) {
			if (FUNC1(name, len, 4) &&
					!FUNC2(name, ".git", 4))
				return 1;
			if (FUNC1(name, len, 5) &&
					!FUNC2(name, "git~1", 5))
				return 1;
			if (name[len] != '\\')
				return 0;
			name += len + 1;
			len = -1;
		}
}