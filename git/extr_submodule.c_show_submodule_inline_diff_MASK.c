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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {scalar_t__ reverse_diff; } ;
struct diff_options {int /*<<< orphan*/  b_prefix; int /*<<< orphan*/  a_prefix; TYPE_1__ flags; int /*<<< orphan*/  use_color; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;
struct child_process {int git_cmd; char const* dir; int out; int no_stdin; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
struct TYPE_4__ {struct object_id* empty_tree; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 unsigned int DIRTY_SUBMODULE_MODIFIED ; 
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct diff_options*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*) ; 
 int /*<<< orphan*/  FUNC8 (struct commit_list*) ; 
 scalar_t__ FUNC9 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC10 (struct object_id const*) ; 
 struct repository* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct repository*) ; 
 int /*<<< orphan*/  FUNC14 (struct diff_options*,char const*,struct object_id*,struct object_id*,unsigned int,struct repository*,struct commit**,struct commit**,struct commit_list**) ; 
 scalar_t__ FUNC15 (struct child_process*) ; 
 scalar_t__ FUNC16 (struct strbuf*,int,char) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 TYPE_2__* the_hash_algo ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

void FUNC19(struct diff_options *o, const char *path,
		struct object_id *one, struct object_id *two,
		unsigned dirty_submodule)
{
	const struct object_id *old_oid = the_hash_algo->empty_tree, *new_oid = the_hash_algo->empty_tree;
	struct commit *left = NULL, *right = NULL;
	struct commit_list *merge_bases = NULL;
	struct child_process cp = CHILD_PROCESS_INIT;
	struct strbuf sb = STRBUF_INIT;
	struct repository *sub;

	sub = FUNC11(path);
	FUNC14(o, path, one, two, dirty_submodule,
			      sub, &left, &right, &merge_bases);

	/* We need a valid left and right commit to display a difference */
	if (!(left || FUNC9(one)) ||
	    !(right || FUNC9(two)))
		goto done;

	if (left)
		old_oid = one;
	if (right)
		new_oid = two;

	cp.git_cmd = 1;
	cp.dir = path;
	cp.out = -1;
	cp.no_stdin = 1;

	/* TODO: other options may need to be passed here. */
	FUNC2(&cp.args, "diff", "--submodule=diff", NULL);
	FUNC1(&cp.args, "--color=%s", FUNC18(o->use_color) ?
			 "always" : "never");

	if (o->flags.reverse_diff) {
		FUNC1(&cp.args, "--src-prefix=%s%s/",
				 o->b_prefix, path);
		FUNC1(&cp.args, "--dst-prefix=%s%s/",
				 o->a_prefix, path);
	} else {
		FUNC1(&cp.args, "--src-prefix=%s%s/",
				 o->a_prefix, path);
		FUNC1(&cp.args, "--dst-prefix=%s%s/",
				 o->b_prefix, path);
	}
	FUNC0(&cp.args, FUNC10(old_oid));
	/*
	 * If the submodule has modified content, we will diff against the
	 * work tree, under the assumption that the user has asked for the
	 * diff format and wishes to actually see all differences even if they
	 * haven't yet been committed to the submodule yet.
	 */
	if (!(dirty_submodule & DIRTY_SUBMODULE_MODIFIED))
		FUNC0(&cp.args, FUNC10(new_oid));

	FUNC12(&cp.env_array);
	if (FUNC15(&cp))
		FUNC4(o, "(diff failed)\n");

	while (FUNC16(&sb, cp.out, '\n') != EOF)
		FUNC5(o, sb.buf, sb.len);

	if (FUNC6(&cp))
		FUNC4(o, "(diff failed)\n");

done:
	FUNC17(&sb);
	if (merge_bases)
		FUNC8(merge_bases);
	if (left)
		FUNC3(left, ~0);
	if (right)
		FUNC3(right, ~0);
	if (sub) {
		FUNC13(sub);
		FUNC7(sub);
	}
}