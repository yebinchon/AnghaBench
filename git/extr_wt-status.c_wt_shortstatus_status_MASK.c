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
struct wt_status_change_data {char* rename_source; scalar_t__ worktree_status; scalar_t__ index_status; } ;
struct wt_status {int /*<<< orphan*/  prefix; scalar_t__ null_termination; int /*<<< orphan*/  fp; } ;
struct string_list_item {char* string; struct wt_status_change_data* util; } ;
struct strbuf {char* buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WT_STATUS_CHANGED ; 
 int /*<<< orphan*/  WT_STATUS_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(struct string_list_item *it,
			 struct wt_status *s)
{
	struct wt_status_change_data *d = it->util;

	if (d->index_status)
		FUNC1(s->fp, FUNC0(WT_STATUS_UPDATED, s), "%c", d->index_status);
	else
		FUNC4(' ');
	if (d->worktree_status)
		FUNC1(s->fp, FUNC0(WT_STATUS_CHANGED, s), "%c", d->worktree_status);
	else
		FUNC4(' ');
	FUNC4(' ');
	if (s->null_termination) {
		FUNC2(stdout, "%s%c", it->string, 0);
		if (d->rename_source)
			FUNC2(stdout, "%s%c", d->rename_source, 0);
	} else {
		struct strbuf onebuf = STRBUF_INIT;
		const char *one;

		if (d->rename_source) {
			one = FUNC5(d->rename_source, s->prefix, &onebuf);
			if (*one != '"' && FUNC8(one, ' ') != NULL) {
				FUNC4('"');
				FUNC6(&onebuf, '"');
				one = onebuf.buf;
			}
			FUNC3("%s -> ", one);
			FUNC7(&onebuf);
		}
		one = FUNC5(it->string, s->prefix, &onebuf);
		if (*one != '"' && FUNC8(one, ' ') != NULL) {
			FUNC4('"');
			FUNC6(&onebuf, '"');
			one = onebuf.buf;
		}
		FUNC3("%s\n", one);
		FUNC7(&onebuf);
	}
}