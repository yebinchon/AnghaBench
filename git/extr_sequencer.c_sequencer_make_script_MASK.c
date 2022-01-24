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
struct strbuf {int dummy; } ;
struct rev_info {int verbose_header; int max_parents; int cherry_mark; int limited; int reverse; int right_only; int topo_order; int pretty_given; int /*<<< orphan*/  commit_format; int /*<<< orphan*/  sort_order; } ;
struct repository {int dummy; } ;
struct pretty_print_context {int /*<<< orphan*/  output_encoding; int /*<<< orphan*/  fmt; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int PATCHSAME ; 
 int /*<<< orphan*/  REV_SORT_IN_GRAPH_ORDER ; 
 unsigned int TODO_LIST_ABBREVIATE_CMDS ; 
 unsigned int TODO_LIST_KEEP_EMPTY ; 
 unsigned int TODO_LIST_REBASE_MERGES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  comment_line_char ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct commit* FUNC5 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 int FUNC7 (struct commit*) ; 
 int FUNC8 (struct pretty_print_context*,struct rev_info*,struct strbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct pretty_print_context*,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*,char const*,...) ; 
 char* FUNC16 (char*) ; 

int FUNC17(struct repository *r, struct strbuf *out, int argc,
			  const char **argv, unsigned flags)
{
	char *format = NULL;
	struct pretty_print_context pp = {0};
	struct rev_info revs;
	struct commit *commit;
	int keep_empty = flags & TODO_LIST_KEEP_EMPTY;
	const char *insn = flags & TODO_LIST_ABBREVIATE_CMDS ? "p" : "pick";
	int rebase_merges = flags & TODO_LIST_REBASE_MERGES;

	FUNC12(r, &revs, NULL);
	revs.verbose_header = 1;
	if (!rebase_merges)
		revs.max_parents = 1;
	revs.cherry_mark = 1;
	revs.limited = 1;
	revs.reverse = 1;
	revs.right_only = 1;
	revs.sort_order = REV_SORT_IN_GRAPH_ORDER;
	revs.topo_order = 1;

	revs.pretty_given = 1;
	FUNC6("rebase.instructionFormat", &format);
	if (!format || !*format) {
		FUNC2(format);
		format = FUNC16("%s");
	}
	FUNC3(format, &revs);
	FUNC2(format);
	pp.fmt = revs.commit_format;
	pp.output_encoding = FUNC4();

	if (FUNC13(argc, argv, &revs, NULL) > 1)
		return FUNC1(FUNC0("make_script: unhandled options"));

	if (FUNC10(&revs) < 0)
		return FUNC1(FUNC0("make_script: error preparing revisions"));

	if (rebase_merges)
		return FUNC8(&pp, &revs, out, flags);

	while ((commit = FUNC5(&revs))) {
		int is_empty  = FUNC7(commit);

		if (!is_empty && (commit->object.flags & PATCHSAME))
			continue;
		if (!keep_empty && is_empty)
			FUNC15(out, "%c ", comment_line_char);
		FUNC15(out, "%s %s ", insn,
			    FUNC9(&commit->object.oid));
		FUNC11(&pp, commit, out);
		FUNC14(out, '\n');
	}
	return 0;
}