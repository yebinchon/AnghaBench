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
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ protect_hfs ; 
 scalar_t__ protect_ntfs ; 
 int /*<<< orphan*/  FUNC7 (char const*,unsigned int) ; 

int FUNC8(const char *path, unsigned mode)
{
	char c;

	if (FUNC1(path))
		return 0;

	goto inside;
	for (;;) {
		if (!c)
			return 1;
		if (FUNC2(c)) {
inside:
			if (protect_hfs) {
				if (FUNC3(path))
					return 0;
				if (FUNC0(mode)) {
					if (FUNC4(path))
						return 0;
				}
			}
			if (protect_ntfs) {
				if (FUNC5(path))
					return 0;
				if (FUNC0(mode)) {
					if (FUNC6(path))
						return 0;
				}
			}

			c = *path++;
			if ((c == '.' && !FUNC7(path, mode)) ||
			    FUNC2(c) || c == '\0')
				return 0;
		}
		c = *path++;
	}
}