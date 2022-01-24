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
struct refspec_item {char* src; scalar_t__ force; int /*<<< orphan*/  dst; scalar_t__ exact_sha1; scalar_t__ pattern; } ;
struct ref {int exact_oid; int force; struct ref* next; struct ref* peer_ref; int /*<<< orphan*/  name; int /*<<< orphan*/  old_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ref*) ; 
 struct ref* FUNC6 (struct ref const*,struct refspec_item const*) ; 
 struct ref* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 struct ref* FUNC9 (struct ref const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ref*,struct ref***) ; 

int FUNC12(const struct ref *remote_refs,
		  const struct refspec_item *refspec,
		  struct ref ***tail,
		  int missing_ok)
{
	struct ref *ref_map, **rmp;

	if (refspec->pattern) {
		ref_map = FUNC6(remote_refs, refspec);
	} else {
		const char *name = refspec->src[0] ? refspec->src : "HEAD";

		if (refspec->exact_sha1) {
			ref_map = FUNC1(name);
			FUNC8(name, &ref_map->old_oid);
			ref_map->exact_oid = 1;
		} else {
			ref_map = FUNC9(remote_refs, name);
		}
		if (!missing_ok && !ref_map)
			FUNC3(FUNC0("couldn't find remote ref %s"), name);
		if (ref_map) {
			ref_map->peer_ref = FUNC7(refspec->dst);
			if (ref_map->peer_ref && refspec->force)
				ref_map->peer_ref->force = 1;
		}
	}

	for (rmp = &ref_map; *rmp; ) {
		if ((*rmp)->peer_ref) {
			if (!FUNC10((*rmp)->peer_ref->name, "refs/") ||
			    FUNC2((*rmp)->peer_ref->name, 0)) {
				struct ref *ignore = *rmp;
				FUNC4(FUNC0("* Ignoring funny ref '%s' locally"),
				      (*rmp)->peer_ref->name);
				*rmp = (*rmp)->next;
				FUNC5(ignore->peer_ref);
				FUNC5(ignore);
				continue;
			}
		}
		rmp = &((*rmp)->next);
	}

	if (ref_map)
		FUNC11(ref_map, tail);

	return 0;
}