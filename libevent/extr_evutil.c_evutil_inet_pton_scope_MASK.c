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
 int AF_INET6 ; 
 int FUNC0 (int,char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char) ; 
 unsigned int FUNC5 (char*,char**,int) ; 

int
FUNC6(int af, const char *src, void *dst, unsigned *indexp)
{
	int r;
	unsigned if_index;
	char *check, *cp, *tmp_src;

	*indexp = 0; /* Reasonable default */

	/* Bail out if not IPv6 */
	if (af != AF_INET6)
		return FUNC0(af, src, dst);

	cp = FUNC4(src, '%');

	/* Bail out if no zone ID */
	if (cp == NULL)
		return FUNC0(af, src, dst);

	if_index = FUNC2(cp + 1);
	if (if_index == 0) {
		/* Could be numeric */
		if_index = FUNC5(cp + 1, &check, 10);
		if (check[0] != '\0')
			return 0;
	}
	*indexp = if_index;
	tmp_src = FUNC3(src);
	cp = FUNC4(tmp_src, '%');
	*cp = '\0';
	r = FUNC0(af, tmp_src, dst);
	FUNC1(tmp_src);
	return r;
}