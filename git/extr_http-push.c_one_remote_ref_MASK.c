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
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; } ;
struct object {int dummy; } ;
struct TYPE_2__ {char const* url; scalar_t__ can_update_info_refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object*) ; 
 struct ref* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,struct ref*) ; 
 struct object* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 struct ref* remote_refs ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(const char *refname)
{
	struct ref *ref;
	struct object *obj;

	ref = FUNC1(refname);

	if (FUNC5(repo->url, ref) != 0) {
		FUNC2(stderr,
			"Unable to fetch ref %s from %s\n",
			refname, repo->url);
		FUNC3(ref);
		return;
	}

	/*
	 * Fetch a copy of the object if it doesn't exist locally - it
	 * may be required for updating server info later.
	 */
	if (repo->can_update_info_refs && !FUNC4(&ref->old_oid)) {
		obj = FUNC6(&ref->old_oid);
		FUNC2(stderr,	"  fetch %s for %s\n",
			FUNC7(&ref->old_oid), refname);
		FUNC0(obj);
	}

	ref->next = remote_refs;
	remote_refs = ref;
}