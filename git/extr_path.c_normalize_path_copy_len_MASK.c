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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 

int FUNC2(char *dst, const char *src, int *prefix_len)
{
	char *dst0;
	const char *end;

	/*
	 * Copy initial part of absolute path: "/", "C:/", "//server/share/".
	 */
	end = src + FUNC1(src);
	while (src < end) {
		char c = *src++;
		if (FUNC0(c))
			c = '/';
		*dst++ = c;
	}
	dst0 = dst;

	while (FUNC0(*src))
		src++;

	for (;;) {
		char c = *src;

		/*
		 * A path component that begins with . could be
		 * special:
		 * (1) "." and ends   -- ignore and terminate.
		 * (2) "./"           -- ignore them, eat slash and continue.
		 * (3) ".." and ends  -- strip one and terminate.
		 * (4) "../"          -- strip one, eat slash and continue.
		 */
		if (c == '.') {
			if (!src[1]) {
				/* (1) */
				src++;
			} else if (FUNC0(src[1])) {
				/* (2) */
				src += 2;
				while (FUNC0(*src))
					src++;
				continue;
			} else if (src[1] == '.') {
				if (!src[2]) {
					/* (3) */
					src += 2;
					goto up_one;
				} else if (FUNC0(src[2])) {
					/* (4) */
					src += 3;
					while (FUNC0(*src))
						src++;
					goto up_one;
				}
			}
		}

		/* copy up to the next '/', and eat all '/' */
		while ((c = *src++) != '\0' && !FUNC0(c))
			*dst++ = c;
		if (FUNC0(c)) {
			*dst++ = '/';
			while (FUNC0(c))
				c = *src++;
			src--;
		} else if (!c)
			break;
		continue;

	up_one:
		/*
		 * dst0..dst is prefix portion, and dst[-1] is '/';
		 * go up one level.
		 */
		dst--;	/* go to trailing '/' */
		if (dst <= dst0)
			return -1;
		/* Windows: dst[-1] cannot be backslash anymore */
		while (dst0 < dst && dst[-1] != '/')
			dst--;
		if (prefix_len && *prefix_len > dst - dst0)
			*prefix_len = dst - dst0;
	}
	*dst = '\0';
	return 0;
}