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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/ * buf; } ;
struct diff_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SYMBOL_STATS_SUMMARY_INSERTS_DELETES ; 
 int /*<<< orphan*/  DIFF_SYMBOL_STATS_SUMMARY_NO_FILES ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(struct diff_options *options,
		int files, int insertions, int deletions)
{
	struct strbuf sb = STRBUF_INIT;

	if (!files) {
		FUNC0(insertions == 0 && deletions == 0);
		FUNC1(options, DIFF_SYMBOL_STATS_SUMMARY_NO_FILES,
				 NULL, 0, 0);
		return;
	}

	FUNC3(&sb,
		    (files == 1) ? " %d file changed" : " %d files changed",
		    files);

	/*
	 * For binary diff, the caller may want to print "x files
	 * changed" with insertions == 0 && deletions == 0.
	 *
	 * Not omitting "0 insertions(+), 0 deletions(-)" in this case
	 * is probably less confusing (i.e skip over "2 files changed
	 * but nothing about added/removed lines? Is this a bug in Git?").
	 */
	if (insertions || deletions == 0) {
		FUNC3(&sb,
			    (insertions == 1) ? ", %d insertion(+)" : ", %d insertions(+)",
			    insertions);
	}

	if (deletions || insertions == 0) {
		FUNC3(&sb,
			    (deletions == 1) ? ", %d deletion(-)" : ", %d deletions(-)",
			    deletions);
	}
	FUNC2(&sb, '\n');
	FUNC1(options, DIFF_SYMBOL_STATS_SUMMARY_INSERTS_DELETES,
			 sb.buf, sb.len, 0);
	FUNC4(&sb);
}