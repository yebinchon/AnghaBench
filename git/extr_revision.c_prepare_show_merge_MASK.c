#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rev_info {int limited; int /*<<< orphan*/  prune_data; TYPE_1__* repo; } ;
struct object_id {int dummy; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct commit_list {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct commit {TYPE_2__ object; } ;
struct cache_entry {char* name; } ;
struct TYPE_3__ {struct index_state* index; } ;

/* Variables and functions */
 int BOTTOM ; 
 int PATHSPEC_ALL_MAGIC ; 
 int PATHSPEC_LITERAL ; 
 int PATHSPEC_LITERAL_PATH ; 
 int PATHSPEC_PREFER_FULL ; 
 int /*<<< orphan*/  FUNC0 (char const**,int) ; 
 int /*<<< orphan*/  REV_CMD_MERGE_BASE ; 
 int /*<<< orphan*/  SYMMETRIC_LEFT ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct commit_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*,struct commit_list*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct index_state*,struct cache_entry const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cache_entry const*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct commit_list*) ; 
 struct commit_list* FUNC10 (struct commit*,struct commit*) ; 
 scalar_t__ FUNC11 (char*,struct object_id*) ; 
 struct commit* FUNC12 (struct object_id*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,char*,char const**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC15(struct rev_info *revs)
{
	struct commit_list *bases;
	struct commit *head, *other;
	struct object_id oid;
	const char **prune = NULL;
	int i, prune_num = 1; /* counting terminating NULL */
	struct index_state *istate = revs->repo->index;

	if (FUNC11("HEAD", &oid))
		FUNC8("--merge without HEAD?");
	head = FUNC12(&oid, "HEAD");
	if (FUNC11("MERGE_HEAD", &oid))
		FUNC8("--merge without MERGE_HEAD?");
	other = FUNC12(&oid, "MERGE_HEAD");
	FUNC2(revs, &head->object, "HEAD");
	FUNC2(revs, &other->object, "MERGE_HEAD");
	bases = FUNC10(head, other);
	FUNC3(revs, bases, REV_CMD_MERGE_BASE, UNINTERESTING | BOTTOM);
	FUNC1(revs, bases, UNINTERESTING | BOTTOM);
	FUNC9(bases);
	head->object.flags |= SYMMETRIC_LEFT;

	if (!istate->cache_nr)
		FUNC14(revs->repo);
	for (i = 0; i < istate->cache_nr; i++) {
		const struct cache_entry *ce = istate->cache[i];
		if (!FUNC6(ce))
			continue;
		if (FUNC4(istate, ce, &revs->prune_data, NULL)) {
			prune_num++;
			FUNC0(prune, prune_num);
			prune[prune_num-2] = ce->name;
			prune[prune_num-1] = NULL;
		}
		while ((i+1 < istate->cache_nr) &&
		       FUNC5(ce, istate->cache[i+1]))
			i++;
	}
	FUNC7(&revs->prune_data);
	FUNC13(&revs->prune_data, PATHSPEC_ALL_MAGIC & ~PATHSPEC_LITERAL,
		       PATHSPEC_PREFER_FULL | PATHSPEC_LITERAL_PATH, "", prune);
	revs->limited = 1;
}