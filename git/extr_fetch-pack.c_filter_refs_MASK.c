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
struct ref {void* match_status; struct ref* next; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; } ;
struct oidset {int dummy; } ;
struct fetch_pack_args {int /*<<< orphan*/  deepen; scalar_t__ fetch_all; } ;

/* Variables and functions */
 int ALLOW_REACHABLE_SHA1 ; 
 int ALLOW_TIP_SHA1 ; 
 struct oidset OIDSET_INIT ; 
 void* REF_MATCHED ; 
 void* REF_UNADVERTISED_NOT_ALLOWED ; 
 int /*<<< orphan*/  FUNC0 (struct oidset*,struct ref*) ; 
 int allow_unadvertised_object_request ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ref* FUNC2 (struct ref*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref*) ; 
 int /*<<< orphan*/  FUNC4 (struct ref*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref*) ; 
 int /*<<< orphan*/  FUNC6 (struct oidset*) ; 
 scalar_t__ FUNC7 (struct oidset*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct fetch_pack_args *args,
			struct ref **refs,
			struct ref **sought, int nr_sought)
{
	struct ref *newlist = NULL;
	struct ref **newtail = &newlist;
	struct ref *unmatched = NULL;
	struct ref *ref, *next;
	struct oidset tip_oids = OIDSET_INIT;
	int i;
	int strict = !(allow_unadvertised_object_request &
		       (ALLOW_TIP_SHA1 | ALLOW_REACHABLE_SHA1));

	i = 0;
	for (ref = *refs; ref; ref = next) {
		int keep = 0;
		next = ref->next;

		if (FUNC8(ref->name, "refs/") &&
		    FUNC1(ref->name, 0)) {
			/*
			 * trash or a peeled value; do not even add it to
			 * unmatched list
			 */
			FUNC3(ref);
			continue;
		} else {
			while (i < nr_sought) {
				int cmp = FUNC9(ref->name, sought[i]->name);
				if (cmp < 0)
					break; /* definitely do not have it */
				else if (cmp == 0) {
					keep = 1; /* definitely have it */
					sought[i]->match_status = REF_MATCHED;
				}
				i++;
			}

			if (!keep && args->fetch_all &&
			    (!args->deepen || !FUNC8(ref->name, "refs/tags/")))
				keep = 1;
		}

		if (keep) {
			*newtail = ref;
			ref->next = NULL;
			newtail = &ref->next;
		} else {
			ref->next = unmatched;
			unmatched = ref;
		}
	}

	if (strict) {
		for (i = 0; i < nr_sought; i++) {
			ref = sought[i];
			if (!FUNC5(ref))
				continue;

			FUNC0(&tip_oids, unmatched);
			FUNC0(&tip_oids, newlist);
			break;
		}
	}

	/* Append unmatched requests to the list */
	for (i = 0; i < nr_sought; i++) {
		ref = sought[i];
		if (!FUNC5(ref))
			continue;

		if (!strict || FUNC7(&tip_oids, &ref->old_oid)) {
			ref->match_status = REF_MATCHED;
			*newtail = FUNC2(ref);
			newtail = &(*newtail)->next;
		} else {
			ref->match_status = REF_UNADVERTISED_NOT_ALLOWED;
		}
	}

	FUNC6(&tip_oids);
	FUNC4(unmatched);

	*refs = newlist;
}