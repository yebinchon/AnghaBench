#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t length; } ;
struct pack_backend {struct git_pack_file* last_found; TYPE_4__ packs; } ;
struct git_pack_file {int dummy; } ;
struct git_pack_entry {int /*<<< orphan*/  sha1; } ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_oid ;

/* Variables and functions */
 int GIT_EAMBIGUOUS ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,TYPE_2__ const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct git_pack_entry*,struct git_pack_file*,TYPE_2__ const*,size_t) ; 
 struct git_pack_file* FUNC5 (TYPE_4__*,size_t) ; 

__attribute__((used)) static int FUNC6(
	struct git_pack_entry *e,
	struct pack_backend *backend,
	const git_oid *short_oid,
	size_t len)
{
	int error;
	size_t i;
	git_oid found_full_oid = {{0}};
	bool found = false;
	struct git_pack_file *last_found = backend->last_found;

	if (last_found) {
		error = FUNC4(e, last_found, short_oid, len);
		if (error == GIT_EAMBIGUOUS)
			return error;
		if (!error) {
			FUNC3(&found_full_oid, &e->sha1);
			found = true;
		}
	}

	for (i = 0; i < backend->packs.length; ++i) {
		struct git_pack_file *p;

		p = FUNC5(&backend->packs, i);
		if (p == last_found)
			continue;

		error = FUNC4(e, p, short_oid, len);
		if (error == GIT_EAMBIGUOUS)
			return error;
		if (!error) {
			if (found && FUNC2(&e->sha1, &found_full_oid))
				return FUNC0("found multiple pack entries");
			FUNC3(&found_full_oid, &e->sha1);
			found = true;
			backend->last_found = p;
		}
	}

	if (!found)
		return FUNC1("no matching pack entry for prefix",
			short_oid, len);
	else
		return 0;
}