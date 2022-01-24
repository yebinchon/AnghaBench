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
struct wt_status_change_data {char index_status; char worktree_status; char* rename_source; int mode_head; int mode_index; int mode_worktree; int rename_status; char* rename_score; int /*<<< orphan*/  oid_index; int /*<<< orphan*/  oid_head; } ;
struct wt_status {int /*<<< orphan*/  fp; int /*<<< orphan*/  prefix; scalar_t__ null_termination; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,int,int,int,char*,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status_change_data*,char*) ; 

__attribute__((used)) static void FUNC6(
	struct string_list_item *it,
	struct wt_status *s)
{
	struct wt_status_change_data *d = it->util;
	struct strbuf buf = STRBUF_INIT;
	struct strbuf buf_from = STRBUF_INIT;
	const char *path = NULL;
	const char *path_from = NULL;
	char key[3];
	char submodule_token[5];
	char sep_char, eol_char;

	FUNC4(it);
	FUNC5(d, submodule_token);

	key[0] = d->index_status ? d->index_status : '.';
	key[1] = d->worktree_status ? d->worktree_status : '.';
	key[2] = 0;

	if (s->null_termination) {
		/*
		 * In -z mode, we DO NOT C-quote pathnames.  Current path is ALWAYS first.
		 * A single NUL character separates them.
		 */
		sep_char = '\0';
		eol_char = '\0';
		path = it->string;
		path_from = d->rename_source;
	} else {
		/*
		 * Path(s) are C-quoted if necessary. Current path is ALWAYS first.
		 * The source path is only present when necessary.
		 * A single TAB separates them (because paths can contain spaces
		 * which are not escaped and C-quoting does escape TAB characters).
		 */
		sep_char = '\t';
		eol_char = '\n';
		path = FUNC2(it->string, s->prefix, &buf);
		if (d->rename_source)
			path_from = FUNC2(d->rename_source, s->prefix, &buf_from);
	}

	if (path_from)
		FUNC0(s->fp, "2 %s %s %06o %06o %06o %s %s %c%s %s%c%s%c",
				key, submodule_token,
				d->mode_head, d->mode_index, d->mode_worktree,
				FUNC1(&d->oid_head), FUNC1(&d->oid_index),
				d->rename_status, d->rename_score,
				path, sep_char, path_from, eol_char);
	else
		FUNC0(s->fp, "1 %s %s %06o %06o %06o %s %s %s%c",
				key, submodule_token,
				d->mode_head, d->mode_index, d->mode_worktree,
				FUNC1(&d->oid_head), FUNC1(&d->oid_index),
				path, eol_char);

	FUNC3(&buf);
	FUNC3(&buf_from);
}