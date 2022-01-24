#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_20__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;
struct TYPE_21__ {int (* exists_prefix ) (TYPE_2__*,TYPE_3__*,TYPE_2__ const*,size_t) ;int /*<<< orphan*/  refresh; } ;
typedef  TYPE_3__ git_odb_backend ;
struct TYPE_18__ {size_t length; } ;
struct TYPE_22__ {TYPE_13__ backends; } ;
typedef  TYPE_4__ git_odb ;
struct TYPE_23__ {TYPE_3__* backend; } ;
typedef  TYPE_5__ backend_internal ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_PASSTHROUGH ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_5__* FUNC3 (TYPE_13__*,size_t) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,TYPE_2__ const*,size_t) ; 

__attribute__((used)) static int FUNC5(git_oid *out, git_odb *db,
	const git_oid *key, size_t len, bool only_refreshed)
{
	size_t i;
	int error = GIT_ENOTFOUND, num_found = 0;
	git_oid last_found = {{0}}, found;

	for (i = 0; i < db->backends.length; ++i) {
		backend_internal *internal = FUNC3(&db->backends, i);
		git_odb_backend *b = internal->backend;

		if (only_refreshed && !b->refresh)
			continue;

		if (!b->exists_prefix)
			continue;

		error = b->exists_prefix(&found, b, key, len);
		if (error == GIT_ENOTFOUND || error == GIT_PASSTHROUGH)
			continue;
		if (error)
			return error;

		/* make sure found item doesn't introduce ambiguity */
		if (num_found) {
			if (FUNC1(&last_found, &found))
				return FUNC0("multiple matches for prefix");
		} else {
			FUNC2(&last_found, &found);
			num_found++;
		}
	}

	if (!num_found)
		return GIT_ENOTFOUND;

	if (out)
		FUNC2(out, &last_found);

	return 0;
}