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
struct rev_info {int single_worktree; int bisect; void* no_walk; int /*<<< orphan*/  ref_excludes; int /*<<< orphan*/  repo; } ;
struct ref_store {int dummy; } ;
struct all_refs_cb {int dummy; } ;

/* Variables and functions */
 int BOTTOM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* REVISION_WALK_NO_WALK_SORTED ; 
 void* REVISION_WALK_NO_WALK_UNSORTED ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  for_each_bad_bisect_ref ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,struct all_refs_cb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,char*,struct all_refs_cb*) ; 
 int /*<<< orphan*/  for_each_good_bisect_ref ; 
 struct ref_store* FUNC9 (int /*<<< orphan*/ ) ; 
 struct ref_store* FUNC10 (char const*) ; 
 int /*<<< orphan*/  handle_one_ref ; 
 int /*<<< orphan*/  FUNC11 (struct ref_store*,struct rev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct all_refs_cb*,struct rev_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct all_refs_cb*) ; 
 int FUNC14 (char*,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refs_for_each_branch_ref ; 
 int /*<<< orphan*/  refs_for_each_ref ; 
 int /*<<< orphan*/  refs_for_each_remote_ref ; 
 int /*<<< orphan*/  refs_for_each_tag_ref ; 
 int /*<<< orphan*/  refs_head_ref ; 
 scalar_t__ FUNC16 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/  term_bad ; 
 int /*<<< orphan*/  term_good ; 

__attribute__((used)) static int FUNC18(const char *submodule,
				struct rev_info *revs,
				int argc, const char **argv, int *flags)
{
	const char *arg = argv[0];
	const char *optarg;
	struct ref_store *refs;
	int argcount;

	if (submodule) {
		/*
		 * We need some something like get_submodule_worktrees()
		 * before we can go through all worktrees of a submodule,
		 * .e.g with adding all HEADs from --all, which is not
		 * supported right now, so stick to single worktree.
		 */
		if (!revs->single_worktree)
			FUNC0("--single-worktree cannot be used together with submodule");
		refs = FUNC10(submodule);
	} else
		refs = FUNC9(revs->repo);

	/*
	 * NOTE!
	 *
	 * Commands like "git shortlog" will not accept the options below
	 * unless parse_revision_opt queues them (as opposed to erroring
	 * out).
	 *
	 * When implementing your new pseudo-option, remember to
	 * register it in the list at the top of handle_revision_opt.
	 */
	if (!FUNC17(arg, "--all")) {
		FUNC11(refs, revs, *flags, refs_for_each_ref);
		FUNC11(refs, revs, *flags, refs_head_ref);
		if (!revs->single_worktree) {
			struct all_refs_cb cb;

			FUNC12(&cb, revs, *flags);
			FUNC13(handle_one_ref, &cb);
		}
		FUNC5(&revs->ref_excludes);
	} else if (!FUNC17(arg, "--branches")) {
		FUNC11(refs, revs, *flags, refs_for_each_branch_ref);
		FUNC5(&revs->ref_excludes);
	} else if (!FUNC17(arg, "--bisect")) {
		FUNC15(&term_bad, &term_good);
		FUNC11(refs, revs, *flags, for_each_bad_bisect_ref);
		FUNC11(refs, revs, *flags ^ (UNINTERESTING | BOTTOM),
			    for_each_good_bisect_ref);
		revs->bisect = 1;
	} else if (!FUNC17(arg, "--tags")) {
		FUNC11(refs, revs, *flags, refs_for_each_tag_ref);
		FUNC5(&revs->ref_excludes);
	} else if (!FUNC17(arg, "--remotes")) {
		FUNC11(refs, revs, *flags, refs_for_each_remote_ref);
		FUNC5(&revs->ref_excludes);
	} else if ((argcount = FUNC14("glob", argv, &optarg))) {
		struct all_refs_cb cb;
		FUNC12(&cb, revs, *flags);
		FUNC7(handle_one_ref, optarg, &cb);
		FUNC5(&revs->ref_excludes);
		return argcount;
	} else if ((argcount = FUNC14("exclude", argv, &optarg))) {
		FUNC3(&revs->ref_excludes, optarg);
		return argcount;
	} else if (FUNC16(arg, "--branches=", &optarg)) {
		struct all_refs_cb cb;
		FUNC12(&cb, revs, *flags);
		FUNC8(handle_one_ref, optarg, "refs/heads/", &cb);
		FUNC5(&revs->ref_excludes);
	} else if (FUNC16(arg, "--tags=", &optarg)) {
		struct all_refs_cb cb;
		FUNC12(&cb, revs, *flags);
		FUNC8(handle_one_ref, optarg, "refs/tags/", &cb);
		FUNC5(&revs->ref_excludes);
	} else if (FUNC16(arg, "--remotes=", &optarg)) {
		struct all_refs_cb cb;
		FUNC12(&cb, revs, *flags);
		FUNC8(handle_one_ref, optarg, "refs/remotes/", &cb);
		FUNC5(&revs->ref_excludes);
	} else if (!FUNC17(arg, "--reflog")) {
		FUNC4(revs, *flags);
	} else if (!FUNC17(arg, "--indexed-objects")) {
		FUNC2(revs, *flags);
	} else if (!FUNC17(arg, "--alternate-refs")) {
		FUNC1(revs, *flags);
	} else if (!FUNC17(arg, "--not")) {
		*flags ^= UNINTERESTING | BOTTOM;
	} else if (!FUNC17(arg, "--no-walk")) {
		revs->no_walk = REVISION_WALK_NO_WALK_SORTED;
	} else if (FUNC16(arg, "--no-walk=", &optarg)) {
		/*
		 * Detached form ("--no-walk X" as opposed to "--no-walk=X")
		 * not allowed, since the argument is optional.
		 */
		if (!FUNC17(optarg, "sorted"))
			revs->no_walk = REVISION_WALK_NO_WALK_SORTED;
		else if (!FUNC17(optarg, "unsorted"))
			revs->no_walk = REVISION_WALK_NO_WALK_UNSORTED;
		else
			return FUNC6("invalid argument to --no-walk");
	} else if (!FUNC17(arg, "--do-walk")) {
		revs->no_walk = 0;
	} else if (!FUNC17(arg, "--single-worktree")) {
		revs->single_worktree = 1;
	} else {
		return 0;
	}

	return 1;
}