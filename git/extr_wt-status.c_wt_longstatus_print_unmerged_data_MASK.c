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
struct wt_status_change_data {int /*<<< orphan*/  stagemask; } ;
struct wt_status {int /*<<< orphan*/  prefix; } ;
struct string_list_item {int /*<<< orphan*/  string; struct wt_status_change_data* util; } ;
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 int /*<<< orphan*/  WT_STATUS_UNMERGED ; 
 char* FUNC0 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int FUNC1 (char* (*) (int /*<<< orphan*/ ),int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status*,char const*,char*,char const*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char const*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct wt_status *s,
					      struct string_list_item *it)
{
	const char *c = FUNC0(WT_STATUS_UNMERGED, s);
	struct wt_status_change_data *d = it->util;
	struct strbuf onebuf = STRBUF_INIT;
	static char *padding;
	static int label_width;
	const char *one, *how;
	int len;

	if (!padding) {
		label_width = FUNC1(wt_status_unmerged_status_string, 1, 7);
		label_width += FUNC7(" ");
		padding = FUNC10(label_width);
		FUNC2(padding, ' ', label_width);
	}

	one = FUNC3(it->string, s->prefix, &onebuf);
	FUNC4(s, FUNC0(WT_STATUS_HEADER, s), "\t");

	how = FUNC9(d->stagemask);
	len = label_width - FUNC8(how);
	FUNC5(s, c, "%s%.*s%s\n", how, len, padding, one);
	FUNC6(&onebuf);
}