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
struct object_id {int dummy; } ;
struct ref {int /*<<< orphan*/  name; scalar_t__ exact_oid; struct object_id old_oid; struct ref* next; } ;
struct object {int flags; } ;

/* Variables and functions */
 int COMPLETE ; 
 struct object* FUNC0 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC4(int no_dependents, const struct ref *wants, struct strbuf *req_buf)
{
	int use_ref_in_want = FUNC3("fetch", "ref-in-want", 0);

	for ( ; wants ; wants = wants->next) {
		const struct object_id *remote = &wants->old_oid;
		struct object *o;

		/*
		 * If that object is complete (i.e. it is an ancestor of a
		 * local ref), we tell them we have it but do not have to
		 * tell them about its ancestors, which they already know
		 * about.
		 *
		 * We use lookup_object here because we are only
		 * interested in the case we *know* the object is
		 * reachable and we have already scanned it.
		 *
		 * Do this only if args->no_dependents is false (if it is true,
		 * we cannot trust the object flags).
		 */
		if (!no_dependents &&
		    ((o = FUNC0(the_repository, remote)) != NULL) &&
		    (o->flags & COMPLETE)) {
			continue;
		}

		if (!use_ref_in_want || wants->exact_oid)
			FUNC2(req_buf, "want %s\n", FUNC1(remote));
		else
			FUNC2(req_buf, "want-ref %s\n", wants->name);
	}
}