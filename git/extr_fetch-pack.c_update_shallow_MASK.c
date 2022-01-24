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
struct shallow_info {int nr_ours; int nr_theirs; size_t* ours; size_t* theirs; TYPE_1__* shallow; struct oid_array* ref; } ;
struct object_id {int dummy; } ;
struct ref {int /*<<< orphan*/  status; struct object_id old_oid; } ;
struct oid_array {scalar_t__ nr; } ;
struct fetch_pack_args {scalar_t__ update_shallow; scalar_t__ cloning; scalar_t__ deepen; } ;
struct TYPE_2__ {int nr; struct object_id* oid; } ;

/* Variables and functions */
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  REF_STATUS_REJECT_SHALLOW ; 
 char* alternate_shallow_file ; 
 int /*<<< orphan*/  FUNC0 (struct shallow_info*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (struct oid_array*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char**,struct oid_array*) ; 
 int /*<<< orphan*/  shallow_lock ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int* FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct fetch_pack_args *args,
			   struct ref **sought, int nr_sought,
			   struct shallow_info *si)
{
	struct oid_array ref = OID_ARRAY_INIT;
	int *status;
	int i;

	if (args->deepen && alternate_shallow_file) {
		if (*alternate_shallow_file == '\0') { /* --unshallow */
			FUNC10(FUNC3(the_repository));
			FUNC8(&shallow_lock);
		} else
			FUNC1(&shallow_lock);
		alternate_shallow_file = NULL;
		return;
	}

	if (!si->shallow || !si->shallow->nr)
		return;

	if (args->cloning) {
		/*
		 * remote is shallow, but this is a clone, there are
		 * no objects in repo to worry about. Accept any
		 * shallow points that exist in the pack (iow in repo
		 * after get_pack() and reprepare_packed_git())
		 */
		struct oid_array extra = OID_ARRAY_INIT;
		struct object_id *oid = si->shallow->oid;
		for (i = 0; i < si->shallow->nr; i++)
			if (FUNC4(&oid[i]))
				FUNC5(&extra, &oid[i]);
		if (extra.nr) {
			FUNC9(&shallow_lock,
						&alternate_shallow_file,
						&extra);
			FUNC1(&shallow_lock);
			alternate_shallow_file = NULL;
		}
		FUNC6(&extra);
		return;
	}

	if (!si->nr_ours && !si->nr_theirs)
		return;

	FUNC7(si);
	if (!si->nr_ours && !si->nr_theirs)
		return;
	for (i = 0; i < nr_sought; i++)
		FUNC5(&ref, &sought[i]->old_oid);
	si->ref = &ref;

	if (args->update_shallow) {
		/*
		 * remote is also shallow, .git/shallow may be updated
		 * so all refs can be accepted. Make sure we only add
		 * shallow roots that are actually reachable from new
		 * refs.
		 */
		struct oid_array extra = OID_ARRAY_INIT;
		struct object_id *oid = si->shallow->oid;
		FUNC0(si, NULL, NULL);
		if (!si->nr_ours && !si->nr_theirs) {
			FUNC6(&ref);
			return;
		}
		for (i = 0; i < si->nr_ours; i++)
			FUNC5(&extra, &oid[si->ours[i]]);
		for (i = 0; i < si->nr_theirs; i++)
			FUNC5(&extra, &oid[si->theirs[i]]);
		FUNC9(&shallow_lock,
					&alternate_shallow_file,
					&extra);
		FUNC1(&shallow_lock);
		FUNC6(&extra);
		FUNC6(&ref);
		alternate_shallow_file = NULL;
		return;
	}

	/*
	 * remote is also shallow, check what ref is safe to update
	 * without updating .git/shallow
	 */
	status = FUNC11(nr_sought, sizeof(*status));
	FUNC0(si, NULL, status);
	if (si->nr_ours || si->nr_theirs) {
		for (i = 0; i < nr_sought; i++)
			if (status[i])
				sought[i]->status = REF_STATUS_REJECT_SHALLOW;
	}
	FUNC2(status);
	FUNC6(&ref);
}