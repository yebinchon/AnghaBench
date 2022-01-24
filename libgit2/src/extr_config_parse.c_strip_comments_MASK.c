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
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static int FUNC1(char *line, int in_quotes)
{
	int quote_count = in_quotes, backslash_count = 0;
	char *ptr;

	for (ptr = line; *ptr; ++ptr) {
		if (ptr[0] == '"' && ptr > line && ptr[-1] != '\\')
			quote_count++;

		if ((ptr[0] == ';' || ptr[0] == '#') &&
			(quote_count % 2) == 0 &&
			(backslash_count % 2) == 0) {
			ptr[0] = '\0';
			break;
		}

		if (ptr[0] == '\\')
			backslash_count++;
		else
			backslash_count = 0;
	}

	/* skip any space at the end */
	while (ptr > line && FUNC0(ptr[-1])) {
		ptr--;
	}
	ptr[0] = '\0';

	return quote_count;
}