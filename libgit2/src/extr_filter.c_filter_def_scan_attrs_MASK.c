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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static int FUNC3(
	git_buf *attrs, size_t *nattr, size_t *nmatch, const char *attr_str)
{
	const char *start, *scan = attr_str;
	int has_eq;

	*nattr = *nmatch = 0;

	if (!scan)
		return 0;

	while (*scan) {
		while (FUNC0(*scan)) scan++;

		for (start = scan, has_eq = 0; *scan && !FUNC0(*scan); ++scan) {
			if (*scan == '=')
				has_eq = 1;
		}

		if (scan > start) {
			(*nattr)++;
			if (has_eq || *start == '-' || *start == '+' || *start == '!')
				(*nmatch)++;

			if (has_eq)
				FUNC2(attrs, '=');
			FUNC1(attrs, start, scan - start);
			FUNC2(attrs, '\0');
		}
	}

	return 0;
}