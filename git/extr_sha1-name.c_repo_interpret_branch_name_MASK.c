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
struct strbuf {int dummy; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 unsigned int INTERPRET_BRANCH_HEAD ; 
 unsigned int INTERPRET_BRANCH_LOCAL ; 
 int /*<<< orphan*/  branch_get_push ; 
 int /*<<< orphan*/  branch_get_upstream ; 
 int FUNC0 (struct repository*,char const*,int,int,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (char const*,int,int,struct strbuf*) ; 
 int FUNC2 (struct repository*,char const*,int,struct strbuf*) ; 
 char* FUNC3 (char const*,char,int) ; 
 int /*<<< orphan*/  push_mark ; 
 int FUNC4 (struct repository*,char const*,int,int,struct strbuf*,unsigned int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  upstream_mark ; 

int FUNC6(struct repository *r,
			       const char *name, int namelen,
			       struct strbuf *buf,
			       unsigned allowed)
{
	char *at;
	const char *start;
	int len;

	if (!namelen)
		namelen = FUNC5(name);

	if (!allowed || (allowed & INTERPRET_BRANCH_LOCAL)) {
		len = FUNC2(r, name, namelen, buf);
		if (!len) {
			return len; /* syntax Ok, not enough switches */
		} else if (len > 0) {
			if (len == namelen)
				return len; /* consumed all */
			else
				return FUNC4(r, name, namelen, len, buf, allowed);
		}
	}

	for (start = name;
	     (at = FUNC3(start, '@', namelen - (start - name)));
	     start = at + 1) {

		if (!allowed || (allowed & INTERPRET_BRANCH_HEAD)) {
			len = FUNC1(name, namelen, at - name, buf);
			if (len > 0)
				return FUNC4(r, name, namelen, len, buf,
						   allowed);
		}

		len = FUNC0(r, name, namelen, at - name, buf,
					    upstream_mark, branch_get_upstream,
					    allowed);
		if (len > 0)
			return len;

		len = FUNC0(r, name, namelen, at - name, buf,
					    push_mark, branch_get_push,
					    allowed);
		if (len > 0)
			return len;
	}

	return -1;
}