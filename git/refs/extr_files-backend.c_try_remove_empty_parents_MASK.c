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
struct strbuf {char* buf; int len; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 unsigned int REMOVE_EMPTY_PARENTS_REF ; 
 unsigned int REMOVE_EMPTY_PARENTS_REFLOG ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct files_ref_store*,struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,struct strbuf*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int) ; 

__attribute__((used)) static void FUNC7(struct files_ref_store *refs,
				     const char *refname,
				     unsigned int flags)
{
	struct strbuf buf = STRBUF_INIT;
	struct strbuf sb = STRBUF_INIT;
	char *p, *q;
	int i;

	FUNC3(&buf, refname);
	p = buf.buf;
	for (i = 0; i < 2; i++) { /* refs/{heads,tags,...}/ */
		while (*p && *p != '/')
			p++;
		/* tolerate duplicate slashes; see check_refname_format() */
		while (*p == '/')
			p++;
	}
	q = buf.buf + buf.len;
	while (flags & (REMOVE_EMPTY_PARENTS_REF | REMOVE_EMPTY_PARENTS_REFLOG)) {
		while (q > p && *q != '/')
			q--;
		while (q > p && *(q-1) == '/')
			q--;
		if (q == p)
			break;
		FUNC6(&buf, q - buf.buf);

		FUNC5(&sb);
		FUNC0(refs, &sb, buf.buf);
		if ((flags & REMOVE_EMPTY_PARENTS_REF) && FUNC2(sb.buf))
			flags &= ~REMOVE_EMPTY_PARENTS_REF;

		FUNC5(&sb);
		FUNC1(refs, &sb, buf.buf);
		if ((flags & REMOVE_EMPTY_PARENTS_REFLOG) && FUNC2(sb.buf))
			flags &= ~REMOVE_EMPTY_PARENTS_REFLOG;
	}
	FUNC4(&buf);
	FUNC4(&sb);
}