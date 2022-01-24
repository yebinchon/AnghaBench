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
struct object_id {int dummy; } ;
struct ref {int /*<<< orphan*/  name; struct object_id old_oid; struct ref* next; } ;
struct object {int flags; } ;
struct fetch_pack_args {int dummy; } ;

/* Variables and functions */
 int COMPLETE ; 
 char* FUNC0 (char*) ; 
 struct object* FUNC1 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct fetch_pack_args*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC4(struct fetch_pack_args *args,
			    struct ref **refs)
{
	struct ref *ref;
	int retval;

	for (retval = 1, ref = *refs; ref ; ref = ref->next) {
		const struct object_id *remote = &ref->old_oid;
		struct object *o;

		o = FUNC1(the_repository, remote);
		if (!o || !(o->flags & COMPLETE)) {
			retval = 0;
			FUNC3(args, "want %s (%s)", FUNC2(remote),
				      ref->name);
			continue;
		}
		FUNC3(args, FUNC0("already have %s (%s)"), FUNC2(remote),
			      ref->name);
	}

	return retval;
}