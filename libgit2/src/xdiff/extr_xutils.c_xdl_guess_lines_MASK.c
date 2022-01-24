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
typedef  int /*<<< orphan*/  mmfile_t ;

/* Variables and functions */
 char* FUNC0 (char const*,char,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,long*) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 

long FUNC3(mmfile_t *mf, long sample) {
	long nl = 0, size, tsize = 0;
	char const *data, *cur, *top;

	if ((cur = data = FUNC1(mf, &size)) != NULL) {
		for (top = data + size; nl < sample && cur < top; ) {
			nl++;
			if (!(cur = FUNC0(cur, '\n', top - cur)))
				cur = top;
			else
				cur++;
		}
		tsize += (long) (cur - data);
	}

	if (nl && tsize)
		nl = FUNC2(mf) / (tsize / nl);

	return nl + 1;
}