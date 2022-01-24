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
struct ref {char* symref; struct ref* next; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct ref* FUNC0 (struct ref const*) ; 
 struct ref const* FUNC1 (struct ref const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 

struct ref *FUNC4(const struct ref *head,
			      const struct ref *refs,
			      int all)
{
	const struct ref *r;
	struct ref *list = NULL;
	struct ref **tail = &list;

	if (!head)
		return NULL;

	/*
	 * Some transports support directly peeking at
	 * where HEAD points; if that is the case, then
	 * we don't have to guess.
	 */
	if (head->symref)
		return FUNC0(FUNC1(refs, head->symref));

	/* If refs/heads/master could be right, it is. */
	if (!all) {
		r = FUNC1(refs, "refs/heads/master");
		if (r && FUNC2(&r->old_oid, &head->old_oid))
			return FUNC0(r);
	}

	/* Look for another ref that points there */
	for (r = refs; r; r = r->next) {
		if (r != head &&
		    FUNC3(r->name, "refs/heads/") &&
		    FUNC2(&r->old_oid, &head->old_oid)) {
			*tail = FUNC0(r);
			tail = &((*tail)->next);
			if (!all)
				break;
		}
	}

	return list;
}