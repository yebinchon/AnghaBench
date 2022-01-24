#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct object_array {int nr; TYPE_3__* objects; } ;
struct merge_options {int /*<<< orphan*/  repo; TYPE_1__* priv; } ;
struct commit {int dummy; } ;
struct TYPE_6__ {TYPE_2__* item; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  call_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct object_array*,char const*,struct commit*,struct commit*) ; 
 scalar_t__ FUNC3 (struct commit*,struct commit*) ; 
 scalar_t__ FUNC4 (struct object_id const*) ; 
 struct commit* FUNC5 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC9 (struct merge_options*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (struct merge_options*,struct commit*) ; 
 int /*<<< orphan*/  FUNC11 (struct commit*) ; 
 scalar_t__ FUNC12 (struct merge_options*,int) ; 

__attribute__((used)) static int FUNC13(struct merge_options *opt,
			   struct object_id *result, const char *path,
			   const struct object_id *base, const struct object_id *a,
			   const struct object_id *b)
{
	struct commit *commit_base, *commit_a, *commit_b;
	int parent_count;
	struct object_array merges;

	int i;
	int search = !opt->priv->call_depth;

	/* store a in result in case we fail */
	FUNC8(result, a);

	/* we can not handle deletion conflicts */
	if (FUNC4(base))
		return 0;
	if (FUNC4(a))
		return 0;
	if (FUNC4(b))
		return 0;

	if (FUNC1(path)) {
		FUNC9(opt, 1, FUNC0("Failed to merge submodule %s (not checked out)"), path);
		return 0;
	}

	if (!(commit_base = FUNC5(opt->repo, base)) ||
	    !(commit_a = FUNC5(opt->repo, a)) ||
	    !(commit_b = FUNC5(opt->repo, b))) {
		FUNC9(opt, 1, FUNC0("Failed to merge submodule %s (commits not present)"), path);
		return 0;
	}

	/* check whether both changes are forward */
	if (!FUNC3(commit_base, commit_a) ||
	    !FUNC3(commit_base, commit_b)) {
		FUNC9(opt, 1, FUNC0("Failed to merge submodule %s (commits don't follow merge-base)"), path);
		return 0;
	}

	/* Case #1: a is contained in b or vice versa */
	if (FUNC3(commit_a, commit_b)) {
		FUNC8(result, b);
		if (FUNC12(opt, 3)) {
			FUNC9(opt, 3, FUNC0("Fast-forwarding submodule %s to the following commit:"), path);
			FUNC10(opt, commit_b);
		} else if (FUNC12(opt, 2))
			FUNC9(opt, 2, FUNC0("Fast-forwarding submodule %s"), path);
		else
			; /* no output */

		return 1;
	}
	if (FUNC3(commit_b, commit_a)) {
		FUNC8(result, a);
		if (FUNC12(opt, 3)) {
			FUNC9(opt, 3, FUNC0("Fast-forwarding submodule %s to the following commit:"), path);
			FUNC10(opt, commit_a);
		} else if (FUNC12(opt, 2))
			FUNC9(opt, 2, FUNC0("Fast-forwarding submodule %s"), path);
		else
			; /* no output */

		return 1;
	}

	/*
	 * Case #2: There are one or more merges that contain a and b in
	 * the submodule. If there is only one, then present it as a
	 * suggestion to the user, but leave it marked unmerged so the
	 * user needs to confirm the resolution.
	 */

	/* Skip the search if makes no sense to the calling context.  */
	if (!search)
		return 0;

	/* find commit which merges them */
	parent_count = FUNC2(opt->repo, &merges, path,
					 commit_a, commit_b);
	switch (parent_count) {
	case 0:
		FUNC9(opt, 1, FUNC0("Failed to merge submodule %s (merge following commits not found)"), path);
		break;

	case 1:
		FUNC9(opt, 1, FUNC0("Failed to merge submodule %s (not fast-forward)"), path);
		FUNC9(opt, 2, FUNC0("Found a possible merge resolution for the submodule:\n"));
		FUNC11((struct commit *) merges.objects[0].item);
		FUNC9(opt, 2, FUNC0(
		       "If this is correct simply add it to the index "
		       "for example\n"
		       "by using:\n\n"
		       "  git update-index --cacheinfo 160000 %s \"%s\"\n\n"
		       "which will accept this suggestion.\n"),
		       FUNC7(&merges.objects[0].item->oid), path);
		break;

	default:
		FUNC9(opt, 1, FUNC0("Failed to merge submodule %s (multiple merges found)"), path);
		for (i = 0; i < merges.nr; i++)
			FUNC11((struct commit *) merges.objects[i].item);
	}

	FUNC6(&merges);
	return 0;
}