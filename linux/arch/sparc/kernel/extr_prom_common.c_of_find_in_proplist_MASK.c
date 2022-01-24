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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

int FUNC2(const char *list, const char *match, int len)
{
	while (len > 0) {
		int l;

		if (!FUNC0(list, match))
			return 1;
		l = FUNC1(list) + 1;
		list += l;
		len -= l;
	}
	return 0;
}