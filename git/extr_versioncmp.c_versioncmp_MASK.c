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
typedef  int uint8_t ;
struct string_list {int dummy; } ;
typedef  int int8_t ;

/* Variables and functions */
#define  CMP 133 
#define  LEN 132 
#define  S_F 131 
#define  S_I 130 
#define  S_N 129 
#define  S_Z 128 
 void* FUNC0 (char*) ; 
 int initialized ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 struct string_list const* prereleases ; 
 scalar_t__ FUNC2 (char const*,char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(const char *s1, const char *s2)
{
	const unsigned char *p1 = (const unsigned char *) s1;
	const unsigned char *p2 = (const unsigned char *) s2;
	unsigned char c1, c2;
	int state, diff;

	/*
	 * Symbol(s)    0       [1-9]   others
	 * Transition   (10) 0  (01) d  (00) x
	 */
	static const uint8_t next_state[] = {
		/* state    x    d    0  */
		/* S_N */  S_N, S_I, S_Z,
		/* S_I */  S_N, S_I, S_I,
		/* S_F */  S_N, S_F, S_F,
		/* S_Z */  S_N, S_F, S_Z
	};

	static const int8_t result_type[] = {
		/* state   x/x  x/d  x/0  d/x  d/d  d/0  0/x  0/d  0/0  */

		/* S_N */  CMP, CMP, CMP, CMP, LEN, CMP, CMP, CMP, CMP,
		/* S_I */  CMP, -1,  -1,  +1,  LEN, LEN, +1,  LEN, LEN,
		/* S_F */  CMP, CMP, CMP, CMP, CMP, CMP, CMP, CMP, CMP,
		/* S_Z */  CMP, +1,  +1,  -1,  CMP, CMP, -1,  CMP, CMP
	};

	if (p1 == p2)
		return 0;

	c1 = *p1++;
	c2 = *p2++;
	/* Hint: '0' is a digit too.  */
	state = S_N + ((c1 == '0') + (FUNC1 (c1) != 0));

	while ((diff = c1 - c2) == 0) {
		if (c1 == '\0')
			return diff;

		state = next_state[state];
		c1 = *p1++;
		c2 = *p2++;
		state += (c1 == '0') + (FUNC1 (c1) != 0);
	}

	if (!initialized) {
		const struct string_list *deprecated_prereleases;
		initialized = 1;
		prereleases = FUNC0("versionsort.suffix");
		deprecated_prereleases = FUNC0("versionsort.prereleasesuffix");
		if (prereleases) {
			if (deprecated_prereleases)
				FUNC3("ignoring versionsort.prereleasesuffix because versionsort.suffix is set");
		} else
			prereleases = deprecated_prereleases;
	}
	if (prereleases && FUNC2(s1, s2, (const char *) p1 - s1 - 1,
					    &diff))
		return diff;

	state = result_type[state * 3 + (((c2 == '0') + (FUNC1 (c2) != 0)))];

	switch (state) {
	case CMP:
		return diff;

	case LEN:
		while (FUNC1 (*p1++))
			if (!FUNC1 (*p2++))
				return 1;

		return FUNC1 (*p2) ? -1 : diff;

	default:
		return state;
	}
}