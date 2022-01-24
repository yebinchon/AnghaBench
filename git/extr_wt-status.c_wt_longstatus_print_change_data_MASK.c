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
struct wt_status_change_data {int index_status; int dirty_submodule; int worktree_status; int rename_status; char* rename_source; int /*<<< orphan*/  new_submodule_commits; } ;
struct wt_status {int /*<<< orphan*/  prefix; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DIRTY_SUBMODULE_MODIFIED ; 
 int DIRTY_SUBMODULE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_COLOR_NORMAL ; 
 struct strbuf STRBUF_INIT ; 
#define  WT_STATUS_CHANGED 129 
 int WT_STATUS_HEADER ; 
#define  WT_STATUS_UPDATED 128 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int,struct wt_status*) ; 
 int FUNC4 (char* (*) (int),char,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char,int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wt_status*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wt_status*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,scalar_t__) ; 
 scalar_t__ FUNC13 (char*) ; 
 int FUNC14 (char const*) ; 
 char* FUNC15 (int) ; 
 char* FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct wt_status *s,
					    int change_type,
					    struct string_list_item *it)
{
	struct wt_status_change_data *d = it->util;
	const char *c = FUNC3(change_type, s);
	int status;
	char *one_name;
	char *two_name;
	const char *one, *two;
	struct strbuf onebuf = STRBUF_INIT, twobuf = STRBUF_INIT;
	struct strbuf extra = STRBUF_INIT;
	static char *padding;
	static int label_width;
	const char *what;
	int len;

	if (!padding) {
		/* If DIFF_STATUS_* uses outside the range [A..Z], we're in trouble */
		label_width = FUNC4(wt_status_diff_status_string, 'A', 'Z');
		label_width += FUNC13(" ");
		padding = FUNC16(label_width);
		FUNC5(padding, ' ', label_width);
	}

	one_name = two_name = it->string;
	switch (change_type) {
	case WT_STATUS_UPDATED:
		status = d->index_status;
		break;
	case WT_STATUS_CHANGED:
		if (d->new_submodule_commits || d->dirty_submodule) {
			FUNC10(&extra, " (");
			if (d->new_submodule_commits)
				FUNC10(&extra, FUNC1("new commits, "));
			if (d->dirty_submodule & DIRTY_SUBMODULE_MODIFIED)
				FUNC10(&extra, FUNC1("modified content, "));
			if (d->dirty_submodule & DIRTY_SUBMODULE_UNTRACKED)
				FUNC10(&extra, FUNC1("untracked content, "));
			FUNC12(&extra, extra.len - 2);
			FUNC9(&extra, ')');
		}
		status = d->worktree_status;
		break;
	default:
		FUNC0("unhandled change_type %d in wt_longstatus_print_change_data",
		    change_type);
	}

	/*
	 * Only pick up the rename it's relevant. If the rename is for
	 * the changed section and we're printing the updated section,
	 * ignore it.
	 */
	if (d->rename_status == status)
		one_name = d->rename_source;

	one = FUNC6(one_name, s->prefix, &onebuf);
	two = FUNC6(two_name, s->prefix, &twobuf);

	FUNC7(s, FUNC3(WT_STATUS_HEADER, s), "\t");
	what = FUNC15(status);
	if (!what)
		FUNC0("unhandled diff status %c", status);
	len = label_width - FUNC14(what);
	FUNC2(len >= 0);
	if (one_name != two_name)
		FUNC8(s, c, "%s%.*s%s -> %s",
				   what, len, padding, one, two);
	else
		FUNC8(s, c, "%s%.*s%s",
				   what, len, padding, one);
	if (extra.len) {
		FUNC8(s, FUNC3(WT_STATUS_HEADER, s), "%s", extra.buf);
		FUNC11(&extra);
	}
	FUNC8(s, GIT_COLOR_NORMAL, "\n");
	FUNC11(&onebuf);
	FUNC11(&twobuf);
}