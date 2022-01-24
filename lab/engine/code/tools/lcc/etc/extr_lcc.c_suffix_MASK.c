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
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

int FUNC3(char *name, char *tails[], int n) {
	int i, len = FUNC1(name);

	for (i = 0; i < n; i++) {
		char *s = tails[i], *t;
		for ( ; (t = FUNC0(s, ';')); s = t + 1) {
			int m = t - s;
			if (len > m && FUNC2(&name[len-m], s, m) == 0)
				return i;
		}
		if (*s) {
			int m = FUNC1(s);
			if (len > m && FUNC2(&name[len-m], s, m) == 0)
				return i;
		}
	}
	return -1;
}