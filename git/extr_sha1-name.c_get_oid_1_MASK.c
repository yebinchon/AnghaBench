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
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum get_oid_result { ____Placeholder_get_oid_result } get_oid_result ;

/* Variables and functions */
 int FOUND ; 
 unsigned int INT_MAX ; 
 int MISSING_OBJECT ; 
 int FUNC0 (struct repository*,char const*,int,struct object_id*) ; 
 int FUNC1 (struct repository*,char const*,int,struct object_id*,unsigned int) ; 
 int FUNC2 (struct repository*,char const*,int,struct object_id*,unsigned int) ; 
 int FUNC3 (struct repository*,char const*,int,struct object_id*,unsigned int) ; 
 int FUNC4 (struct repository*,char const*,int,struct object_id*,unsigned int) ; 
 int FUNC5 (struct repository*,char const*,int,struct object_id*,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int,int) ; 

__attribute__((used)) static enum get_oid_result FUNC8(struct repository *r,
				     const char *name, int len,
				     struct object_id *oid,
				     unsigned lookup_flags)
{
	int ret, has_suffix;
	const char *cp;

	/*
	 * "name~3" is "name^^^", "name~" is "name~1", and "name^" is "name^1".
	 */
	has_suffix = 0;
	for (cp = name + len - 1; name <= cp; cp--) {
		int ch = *cp;
		if ('0' <= ch && ch <= '9')
			continue;
		if (ch == '~' || ch == '^')
			has_suffix = ch;
		break;
	}

	if (has_suffix) {
		unsigned int num = 0;
		int len1 = cp - name;
		cp++;
		while (cp < name + len) {
			unsigned int digit = *cp++ - '0';
			if (FUNC7(num, 10))
				return MISSING_OBJECT;
			num *= 10;
			if (FUNC6(num, digit))
				return MISSING_OBJECT;
			num += digit;
		}
		if (!num && len1 == len - 1)
			num = 1;
		else if (num > INT_MAX)
			return MISSING_OBJECT;
		if (has_suffix == '^')
			return FUNC3(r, name, len1, oid, num);
		/* else if (has_suffix == '~') -- goes without saying */
		return FUNC1(r, name, len1, oid, num);
	}

	ret = FUNC5(r, name, len, oid, lookup_flags);
	if (!ret)
		return FOUND;

	ret = FUNC2(r, name, len, oid, lookup_flags);
	if (!ret)
		return FOUND;

	/* It could be describe output that is "SOMETHING-gXXXX" */
	ret = FUNC0(r, name, len, oid);
	if (!ret)
		return FOUND;

	return FUNC4(r, name, len, oid, lookup_flags);
}