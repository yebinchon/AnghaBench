#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

int FUNC3(const char *path, struct string_list *prefixes)
{
	int i, max_len = -1;

	if (!FUNC0(path, "/"))
		return -1;

	for (i = 0; i < prefixes->nr; i++) {
		const char *ceil = prefixes->items[i].string;
		int len = FUNC1(ceil);

		if (len == 1 && ceil[0] == '/')
			len = 0; /* root matches anything, with length 0 */
		else if (!FUNC2(path, ceil, len) && path[len] == '/')
			; /* match of length len */
		else
			continue; /* no match */

		if (len > max_len)
			max_len = len;
	}

	return max_len;
}