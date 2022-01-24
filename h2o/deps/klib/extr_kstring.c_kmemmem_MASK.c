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
typedef  size_t ubyte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t const*,int) ; 

void *FUNC2(const void *_str, int n, const void *_pat, int m, int **_prep)
{
	int i, j, *prep = 0, *bmGs, *bmBc;
	const ubyte_t *str, *pat;
	str = (const ubyte_t*)_str; pat = (const ubyte_t*)_pat;
	prep = (_prep == 0 || *_prep == 0)? FUNC1(pat, m) : *_prep;
	if (_prep && *_prep == 0) *_prep = prep;
	bmGs = prep; bmBc = prep + m;
	j = 0;
	while (j <= n - m) {
		for (i = m - 1; i >= 0 && pat[i] == str[i+j]; --i);
		if (i >= 0) {
			int max = bmBc[str[i+j]] - m + 1 + i;
			if (max < bmGs[i]) max = bmGs[i];
			j += max;
		} else return (void*)(str + j);
	}
	if (_prep == 0) FUNC0(prep);
	return 0;
}