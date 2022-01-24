#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char const* buf; int len; } ;
struct repository {TYPE_5__* index; } ;
struct replay_opts {int xopts_nr; char* strategy; char* gpg_sign; int /*<<< orphan*/  allow_rerere_auto; int /*<<< orphan*/ * xopts; scalar_t__ allow_ff; int /*<<< orphan*/  squash_onto; scalar_t__ have_squash_onto; } ;
struct merge_options {char* branch1; char* branch2; int buffer_output; struct strbuf obuf; } ;
struct lock_file {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_12__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_4__ object; TYPE_3__* parents; } ;
struct child_process {int git_cmd; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;
struct TYPE_15__ {struct commit_list* next; } ;
struct TYPE_14__ {int hexsz; } ;
struct TYPE_13__ {scalar_t__ cache_changed; } ;
struct TYPE_11__ {struct commit_list* next; TYPE_2__* item; } ;
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct TYPE_10__ {TYPE_1__ object; } ;

/* Variables and functions */
 int AMEND_MSG ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  COMMIT_LOCK ; 
 int EDIT_MSG ; 
 int /*<<< orphan*/  LOCK_REPORT_ON_ERROR ; 
 struct strbuf STRBUF_INIT ; 
 int TODO_EDIT_MERGE_MSG ; 
 int VERIFY_MSG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC3 (struct commit*,struct commit_list**) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct commit_list*) ; 
 char* FUNC11 (struct commit*,int /*<<< orphan*/ *) ; 
 struct commit_list* FUNC12 (struct commit*,struct commit*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct repository*) ; 
 char* FUNC15 (struct repository*) ; 
 char* FUNC16 (struct repository*) ; 
 char* FUNC17 (struct repository*) ; 
 char* FUNC18 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC19 (struct merge_options*,struct repository*) ; 
 scalar_t__ FUNC20 (char const) ; 
 struct commit* FUNC21 (char*) ; 
 struct commit* FUNC22 (char const*,int,struct strbuf*) ; 
 int FUNC23 (struct merge_options*,struct commit*,struct commit*,struct commit_list*,struct commit**) ; 
 char* FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (struct repository*,struct lock_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct repository*) ; 
 int /*<<< orphan*/  FUNC29 (struct repository*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct lock_file*) ; 
 int FUNC31 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC32 (struct repository*,char*,struct replay_opts*,int) ; 
 char* staged_changes_advice ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC33 (struct strbuf*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC34 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC35 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC36 (char*,char*) ; 
 int FUNC37 (char const*,char*) ; 
 int FUNC38 (char const*) ; 
 scalar_t__ FUNC39 (char const*,char*) ; 
 TYPE_6__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct commit*,char const*) ; 
 int /*<<< orphan*/  FUNC42 (char const*) ; 
 scalar_t__ FUNC43 (TYPE_5__*,struct lock_file*,int /*<<< orphan*/ ) ; 
 int FUNC44 (char const*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC45(struct repository *r,
		    struct commit *commit,
		    const char *arg, int arg_len,
		    int flags, struct replay_opts *opts)
{
	int run_commit_flags = (flags & TODO_EDIT_MERGE_MSG) ?
		EDIT_MSG | VERIFY_MSG : 0;
	struct strbuf ref_name = STRBUF_INIT;
	struct commit *head_commit, *merge_commit, *i;
	struct commit_list *bases, *j, *reversed = NULL;
	struct commit_list *to_merge = NULL, **tail = &to_merge;
	const char *strategy = !opts->xopts_nr &&
		(!opts->strategy || !FUNC36(opts->strategy, "recursive")) ?
		NULL : opts->strategy;
	struct merge_options o;
	int merge_arg_len, oneline_offset, can_fast_forward, ret, k;
	static struct lock_file lock;
	const char *p;

	if (FUNC27(r, &lock, LOCK_REPORT_ON_ERROR) < 0) {
		ret = -1;
		goto leave_merge;
	}

	head_commit = FUNC21("HEAD");
	if (!head_commit) {
		ret = FUNC5(FUNC0("cannot merge without a current revision"));
		goto leave_merge;
	}

	/*
	 * For octopus merges, the arg starts with the list of revisions to be
	 * merged. The list is optionally followed by '#' and the oneline.
	 */
	merge_arg_len = oneline_offset = arg_len;
	for (p = arg; p - arg < arg_len; p += FUNC39(p, " \t\n")) {
		if (!*p)
			break;
		if (*p == '#' && (!p[1] || FUNC20(p[1]))) {
			p += 1 + FUNC39(p + 1, " \t\n");
			oneline_offset = p - arg;
			break;
		}
		k = FUNC37(p, " \t\n");
		if (!k)
			continue;
		merge_commit = FUNC22(p, k, &ref_name);
		if (!merge_commit) {
			ret = FUNC5(FUNC0("unable to parse '%.*s'"), k, p);
			goto leave_merge;
		}
		tail = &FUNC3(merge_commit, tail)->next;
		p += k;
		merge_arg_len = p - arg;
	}

	if (!to_merge) {
		ret = FUNC5(FUNC0("nothing to merge: '%.*s'"), arg_len, arg);
		goto leave_merge;
	}

	if (opts->have_squash_onto &&
	    FUNC25(&head_commit->object.oid, &opts->squash_onto)) {
		/*
		 * When the user tells us to "merge" something into a
		 * "[new root]", let's simply fast-forward to the merge head.
		 */
		FUNC30(&lock);
		if (to_merge->next)
			ret = FUNC5(FUNC0("octopus merge cannot be executed on "
				      "top of a [new root]"));
		else
			ret = FUNC7(r, &to_merge->item->object.oid,
					      &head_commit->object.oid, 0,
					      opts);
		goto leave_merge;
	}

	if (commit) {
		const char *message = FUNC11(commit, NULL);
		const char *body;
		int len;

		if (!message) {
			ret = FUNC5(FUNC0("could not get commit message of '%s'"),
				    FUNC24(&commit->object.oid));
			goto leave_merge;
		}
		FUNC42(message);
		FUNC8(message, &body);
		len = FUNC38(body);
		ret = FUNC44(body, len, FUNC17(r), 0);
		FUNC41(commit, message);
		if (ret) {
			FUNC6(FUNC0("could not write '%s'"),
				    FUNC17(r));
			goto leave_merge;
		}
	} else {
		struct strbuf buf = STRBUF_INIT;
		int len;

		FUNC33(&buf, "author %s", FUNC13(0));
		FUNC42(buf.buf);
		FUNC35(&buf);

		if (oneline_offset < arg_len) {
			p = arg + oneline_offset;
			len = arg_len - oneline_offset;
		} else {
			FUNC33(&buf, "Merge %s '%.*s'",
				    to_merge->next ? "branches" : "branch",
				    merge_arg_len, arg);
			p = buf.buf;
			len = buf.len;
		}

		ret = FUNC44(p, len, FUNC17(r), 0);
		FUNC34(&buf);
		if (ret) {
			FUNC6(FUNC0("could not write '%s'"),
				    FUNC17(r));
			goto leave_merge;
		}
	}

	/*
	 * If HEAD is not identical to the first parent of the original merge
	 * commit, we cannot fast-forward.
	 */
	can_fast_forward = opts->allow_ff && commit && commit->parents &&
		FUNC25(&commit->parents->item->object.oid,
		      &head_commit->object.oid);

	/*
	 * If any merge head is different from the original one, we cannot
	 * fast-forward.
	 */
	if (can_fast_forward) {
		struct commit_list *p = commit->parents->next;

		for (j = to_merge; j && p; j = j->next, p = p->next)
			if (!FUNC25(&j->item->object.oid,
				   &p->item->object.oid)) {
				can_fast_forward = 0;
				break;
			}
		/*
		 * If the number of merge heads differs from the original merge
		 * commit, we cannot fast-forward.
		 */
		if (j || p)
			can_fast_forward = 0;
	}

	if (can_fast_forward) {
		FUNC30(&lock);
		ret = FUNC7(r, &commit->object.oid,
				      &head_commit->object.oid, 0, opts);
		if (flags & TODO_EDIT_MERGE_MSG) {
			run_commit_flags |= AMEND_MSG;
			goto fast_forward_edit;
		}
		goto leave_merge;
	}

	if (strategy || to_merge->next) {
		/* Octopus merge */
		struct child_process cmd = CHILD_PROCESS_INIT;

		if (FUNC26(&cmd.env_array)) {
			const char *gpg_opt = FUNC18(opts);

			ret = FUNC5(FUNC0(staged_changes_advice), gpg_opt, gpg_opt);
			goto leave_merge;
		}

		cmd.git_cmd = 1;
		FUNC1(&cmd.args, "merge");
		FUNC1(&cmd.args, "-s");
		if (!strategy)
			FUNC1(&cmd.args, "octopus");
		else {
			FUNC1(&cmd.args, strategy);
			for (k = 0; k < opts->xopts_nr; k++)
				FUNC2(&cmd.args,
						 "-X%s", opts->xopts[k]);
		}
		FUNC1(&cmd.args, "--no-edit");
		FUNC1(&cmd.args, "--no-ff");
		FUNC1(&cmd.args, "--no-log");
		FUNC1(&cmd.args, "--no-stat");
		FUNC1(&cmd.args, "-F");
		FUNC1(&cmd.args, FUNC17(r));
		if (opts->gpg_sign)
			FUNC1(&cmd.args, opts->gpg_sign);

		/* Add the tips to be merged */
		for (j = to_merge; j; j = j->next)
			FUNC1(&cmd.args,
					FUNC24(&j->item->object.oid));

		FUNC34(&ref_name);
		FUNC40(FUNC14(r));
		FUNC30(&lock);

		FUNC30(&lock);
		ret = FUNC31(&cmd);

		/* force re-reading of the cache */
		if (!ret && (FUNC4(r->index) < 0 ||
			     FUNC28(r) < 0))
			ret = FUNC5(FUNC0("could not read index"));
		goto leave_merge;
	}

	merge_commit = to_merge->item;
	bases = FUNC12(head_commit, merge_commit);
	if (bases && FUNC25(&merge_commit->object.oid,
			   &bases->item->object.oid)) {
		ret = 0;
		/* skip merging an ancestor of HEAD */
		goto leave_merge;
	}

	FUNC44(FUNC24(&merge_commit->object.oid), the_hash_algo->hexsz,
		      FUNC15(r), 0);
	FUNC44("no-ff", 5, FUNC16(r), 0);

	for (j = bases; j; j = j->next)
		FUNC3(j->item, &reversed);
	FUNC10(bases);

	FUNC28(r);
	FUNC19(&o, r);
	o.branch1 = "HEAD";
	o.branch2 = ref_name.buf;
	o.buffer_output = 2;

	ret = FUNC23(&o, head_commit, merge_commit, reversed, &i);
	if (ret <= 0)
		FUNC9(o.obuf.buf, stdout);
	FUNC34(&o.obuf);
	if (ret < 0) {
		FUNC5(FUNC0("could not even attempt to merge '%.*s'"),
		      merge_arg_len, arg);
		goto leave_merge;
	}
	/*
	 * The return value of merge_recursive() is 1 on clean, and 0 on
	 * unclean merge.
	 *
	 * Let's reverse that, so that do_merge() returns 0 upon success and
	 * 1 upon failed merge (keeping the return value -1 for the cases where
	 * we will want to reschedule the `merge` command).
	 */
	ret = !ret;

	if (r->index->cache_changed &&
	    FUNC43(r->index, &lock, COMMIT_LOCK)) {
		ret = FUNC5(FUNC0("merge: Unable to write new index file"));
		goto leave_merge;
	}

	FUNC30(&lock);
	if (ret)
		FUNC29(r, opts->allow_rerere_auto);
	else
		/*
		 * In case of problems, we now want to return a positive
		 * value (a negative one would indicate that the `merge`
		 * command needs to be rescheduled).
		 */
	fast_forward_edit:
		ret = !!FUNC32(r, FUNC17(r), opts,
				       run_commit_flags);

leave_merge:
	FUNC34(&ref_name);
	FUNC30(&lock);
	FUNC10(to_merge);
	return ret;
}