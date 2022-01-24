#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; TYPE_1__* items; } ;
struct repository {int dummy; } ;
struct remote {scalar_t__ origin; int /*<<< orphan*/  name; } ;
struct refspec {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 scalar_t__ REMOTE_UNCONFIGURED ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,struct oid_array*,int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct remote const*,struct refspec const*,struct string_list const*,int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,struct remote const*,struct refspec const*) ; 

int FUNC9(struct repository *r,
			     struct oid_array *commits,
			     const struct remote *remote,
			     const struct refspec *rs,
			     const struct string_list *push_options,
			     int dry_run)
{
	int i, ret = 1;
	struct string_list needs_pushing = STRING_LIST_INIT_DUP;

	if (!FUNC2(r, commits,
				      remote->name, &needs_pushing))
		return 1;

	/*
	 * Verify that the remote and refspec can be propagated to all
	 * submodules.  This check can be skipped if the remote and refspec
	 * won't be propagated due to the remote being unconfigured (e.g. a URL
	 * instead of a remote name).
	 */
	if (remote->origin != REMOTE_UNCONFIGURED) {
		char *head;
		struct object_id head_oid;

		head = FUNC6("HEAD", 0, &head_oid, NULL);
		if (!head)
			FUNC1(FUNC0("Failed to resolve HEAD as a valid ref."));

		for (i = 0; i < needs_pushing.nr; i++)
			FUNC8(needs_pushing.items[i].string,
					     head, remote, rs);
		FUNC4(head);
	}

	/* Actually push the submodules */
	for (i = 0; i < needs_pushing.nr; i++) {
		const char *path = needs_pushing.items[i].string;
		FUNC3(stderr, "Pushing submodule '%s'\n", path);
		if (!FUNC5(path, remote, rs,
				    push_options, dry_run)) {
			FUNC3(stderr, "Unable to push submodule '%s'\n", path);
			ret = 0;
		}
	}

	FUNC7(&needs_pushing, 0);

	return ret;
}