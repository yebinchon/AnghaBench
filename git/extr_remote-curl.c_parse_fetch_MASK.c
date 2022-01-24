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
struct strbuf {char const* buf; } ;
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref**,int,int) ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ref* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,struct ref**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ref**) ; 
 int /*<<< orphan*/  FUNC8 (struct ref*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC10 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC13 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 

__attribute__((used)) static void FUNC15(struct strbuf *buf)
{
	struct ref **to_fetch = NULL;
	struct ref *list_head = NULL;
	struct ref **list = &list_head;
	int alloc_heads = 0, nr_heads = 0;

	do {
		const char *p;
		if (FUNC12(buf->buf, "fetch ", &p)) {
			const char *name;
			struct ref *ref;
			struct object_id old_oid;
			const char *q;

			if (FUNC10(p, &old_oid, &q))
				FUNC3(FUNC1("protocol error: expected sha/ref, got '%s'"), p);
			if (*q == ' ')
				name = q + 1;
			else if (!*q)
				name = "";
			else
				FUNC3(FUNC1("protocol error: expected sha/ref, got '%s'"), p);

			ref = FUNC2(name);
			FUNC9(&ref->old_oid, &old_oid);

			*list = ref;
			list = &ref->next;

			FUNC0(to_fetch, nr_heads + 1, alloc_heads);
			to_fetch[nr_heads++] = ref;
		}
		else
			FUNC3(FUNC1("http transport does not support %s"), buf->buf);

		FUNC14(buf);
		if (FUNC13(buf, stdin) == EOF)
			return;
		if (!*buf->buf)
			break;
	} while (1);

	if (FUNC5(nr_heads, to_fetch))
		FUNC4(128); /* error already reported */
	FUNC8(list_head);
	FUNC7(to_fetch);

	FUNC11("\n");
	FUNC6(stdout);
	FUNC14(buf);
}