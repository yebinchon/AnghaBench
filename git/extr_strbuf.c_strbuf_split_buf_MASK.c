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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf**,size_t,size_t) ; 
 char* FUNC1 (char const*,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int) ; 
 struct strbuf* FUNC4 (int) ; 

struct strbuf **FUNC5(const char *str, size_t slen,
				 int terminator, int max)
{
	struct strbuf **ret = NULL;
	size_t nr = 0, alloc = 0;
	struct strbuf *t;

	while (slen) {
		int len = slen;
		if (max <= 0 || nr + 1 < max) {
			const char *end = FUNC1(str, terminator, slen);
			if (end)
				len = end - str + 1;
		}
		t = FUNC4(sizeof(struct strbuf));
		FUNC3(t, len);
		FUNC2(t, str, len);
		FUNC0(ret, nr + 2, alloc);
		ret[nr++] = t;
		str += len;
		slen -= len;
	}
	FUNC0(ret, nr + 1, alloc); /* In case string was empty */
	ret[nr] = NULL;
	return ret;
}