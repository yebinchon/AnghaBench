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
struct tree {int dummy; } ;
struct strbuf {int dummy; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct replay_opts {char** xopts; int xopts_nr; int /*<<< orphan*/  default_msg_cleanup; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct merge_options {char const* ancestor; char* branch1; char const* branch2; int buffer_output; int show_rename_progress; TYPE_1__ obuf; } ;
struct lock_file {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int COMMIT_LOCK ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  LOCK_REPORT_ON_ERROR ; 
 int SKIP_IF_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct replay_opts*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ ) ; 
 struct tree* FUNC3 (struct repository*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tree* FUNC6 (struct commit*) ; 
 int /*<<< orphan*/  FUNC7 (struct merge_options*,struct repository*) ; 
 scalar_t__ FUNC8 (struct replay_opts*) ; 
 int FUNC9 (struct merge_options*,struct tree*,struct tree*,struct tree*) ; 
 int /*<<< orphan*/  FUNC10 (struct merge_options*,char*) ; 
 struct tree* FUNC11 (struct object_id*) ; 
 scalar_t__ FUNC12 (struct repository*,struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct repository*) ; 
 int /*<<< orphan*/  FUNC14 (struct lock_file*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct lock_file*,int) ; 

__attribute__((used)) static int FUNC17(struct repository *r,
			      struct commit *base, struct commit *next,
			      const char *base_label, const char *next_label,
			      struct object_id *head, struct strbuf *msgbuf,
			      struct replay_opts *opts)
{
	struct merge_options o;
	struct tree *next_tree, *base_tree, *head_tree;
	int clean;
	char **xopt;
	struct lock_file index_lock = LOCK_INIT;

	if (FUNC12(r, &index_lock, LOCK_REPORT_ON_ERROR) < 0)
		return -1;

	FUNC13(r);

	FUNC7(&o, r);
	o.ancestor = base ? base_label : "(empty tree)";
	o.branch1 = "HEAD";
	o.branch2 = next ? next_label : "(empty tree)";
	if (FUNC8(opts))
		o.buffer_output = 2;
	o.show_rename_progress = 1;

	head_tree = FUNC11(head);
	next_tree = next ? FUNC6(next) : FUNC3(r);
	base_tree = base ? FUNC6(base) : FUNC3(r);

	for (xopt = opts->xopts; xopt != opts->xopts + opts->xopts_nr; xopt++)
		FUNC10(&o, *xopt);

	clean = FUNC9(&o,
			    head_tree,
			    next_tree, base_tree);
	if (FUNC8(opts) && clean <= 0)
		FUNC5(o.obuf.buf, stdout);
	FUNC15(&o.obuf);
	if (clean < 0) {
		FUNC14(&index_lock);
		return clean;
	}

	if (FUNC16(r->index, &index_lock,
			       COMMIT_LOCK | SKIP_IF_UNCHANGED))
		/*
		 * TRANSLATORS: %s will be "revert", "cherry-pick" or
		 * "rebase -i".
		 */
		return FUNC4(FUNC0("%s: Unable to write new index file"),
			FUNC0(FUNC1(opts)));

	if (!clean)
		FUNC2(r->index, msgbuf,
				      opts->default_msg_cleanup);

	return !clean;
}