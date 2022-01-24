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
struct string_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_store {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ref_store*,char const*,int /*<<< orphan*/ *,struct string_list*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char const*) ; 

int FUNC5(struct ref_store *refs,
			      const char *old_refname,
			      const char *new_refname)
{
	struct string_list skip = STRING_LIST_INIT_NODUP;
	struct strbuf err = STRBUF_INIT;
	int ok;

	FUNC4(&skip, old_refname);
	ok = !FUNC1(refs, new_refname,
					    NULL, &skip, &err);
	if (!ok)
		FUNC0("%s", err.buf);

	FUNC3(&skip, 0);
	FUNC2(&err);
	return ok;
}