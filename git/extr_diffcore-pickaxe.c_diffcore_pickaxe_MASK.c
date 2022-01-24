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
struct strbuf {char const* buf; } ;
struct diff_options {char* pickaxe; int pickaxe_opts; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/ * kwset_t ;

/* Variables and functions */
 int DIFF_PICKAXE_IGNORE_CASE ; 
 int DIFF_PICKAXE_KIND_G ; 
 int DIFF_PICKAXE_KIND_S ; 
 int DIFF_PICKAXE_REGEX ; 
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 int REG_NEWLINE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  diff_grep ; 
 int /*<<< orphan*/  diff_queued_diff ; 
 int /*<<< orphan*/  has_changes ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct diff_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/ * tolower_trans_tbl ; 

void FUNC11(struct diff_options *o)
{
	const char *needle = o->pickaxe;
	int opts = o->pickaxe_opts;
	regex_t regex, *regexp = NULL;
	kwset_t kws = NULL;

	if (opts & (DIFF_PICKAXE_REGEX | DIFF_PICKAXE_KIND_G)) {
		int cflags = REG_EXTENDED | REG_NEWLINE;
		if (o->pickaxe_opts & DIFF_PICKAXE_IGNORE_CASE)
			cflags |= REG_ICASE;
		FUNC7(&regex, needle, cflags);
		regexp = &regex;
	} else if (opts & DIFF_PICKAXE_KIND_S) {
		if (o->pickaxe_opts & DIFF_PICKAXE_IGNORE_CASE &&
		    FUNC1(needle)) {
			struct strbuf sb = STRBUF_INIT;
			int cflags = REG_NEWLINE | REG_ICASE;

			FUNC0(&sb, needle);
			FUNC7(&regex, sb.buf, cflags);
			FUNC9(&sb);
			regexp = &regex;
		} else {
			kws = FUNC2(o->pickaxe_opts & DIFF_PICKAXE_IGNORE_CASE
				       ? tolower_trans_tbl : NULL);
			FUNC4(kws, needle, FUNC10(needle));
			FUNC5(kws);
		}
	}

	FUNC6(&diff_queued_diff, o, regexp, kws,
		(opts & DIFF_PICKAXE_KIND_G) ? diff_grep : has_changes);

	if (regexp)
		FUNC8(regexp);
	if (kws)
		FUNC3(kws);
	return;
}