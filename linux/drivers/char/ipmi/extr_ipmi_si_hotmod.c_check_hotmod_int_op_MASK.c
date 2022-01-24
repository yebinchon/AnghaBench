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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 unsigned int FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *curr, const char *option,
			       const char *name, unsigned int *val)
{
	char *n;

	if (FUNC2(curr, name) == 0) {
		if (!option) {
			FUNC0("No option given for '%s'\n", curr);
			return -EINVAL;
		}
		*val = FUNC1(option, &n, 0);
		if ((*n != '\0') || (*option == '\0')) {
			FUNC0("Bad option given for '%s'\n", curr);
			return -EINVAL;
		}
		return 1;
	}
	return 0;
}