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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const**,char const**,size_t*) ; 
 char* FUNC3 (char const*,size_t) ; 

__attribute__((used)) static int FUNC4(const char *to_parse, const char *candidate,
				      const char **end, int *val)
{
	const char *argval;
	char *strval;
	size_t arglen;
	int v;

	if (!FUNC2(to_parse, candidate, end, &argval, &arglen))
		return 0;

	if (!argval) {
		*val = 1;
		return 1;
	}

	strval = FUNC3(argval, arglen);
	v = FUNC1(strval);
	FUNC0(strval);

	if (v == -1)
		return 0;

	*val = v;

	return 1;
}