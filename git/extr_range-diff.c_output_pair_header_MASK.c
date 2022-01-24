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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct patch_util {struct object_id oid; int /*<<< orphan*/  i; int /*<<< orphan*/  patch; } ;
struct diff_options {int /*<<< orphan*/  file; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  DIFF_COMMIT ; 
 int /*<<< orphan*/  DIFF_FILE_NEW ; 
 int /*<<< orphan*/  DIFF_FILE_OLD ; 
 int /*<<< orphan*/  DIFF_RESET ; 
 char* FUNC0 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC12(struct diff_options *diffopt,
			       int patch_no_width,
			       struct strbuf *buf,
			       struct strbuf *dashes,
			       struct patch_util *a_util,
			       struct patch_util *b_util)
{
	struct object_id *oid = a_util ? &a_util->oid : &b_util->oid;
	struct commit *commit;
	char status;
	const char *color_reset = FUNC0(diffopt, DIFF_RESET);
	const char *color_old = FUNC0(diffopt, DIFF_FILE_OLD);
	const char *color_new = FUNC0(diffopt, DIFF_FILE_NEW);
	const char *color_commit = FUNC0(diffopt, DIFF_COMMIT);
	const char *color;

	if (!dashes->len)
		FUNC6(dashes, '-',
				FUNC11(FUNC1(oid,
							  DEFAULT_ABBREV)));

	if (!b_util) {
		color = color_old;
		status = '<';
	} else if (!a_util) {
		color = color_new;
		status = '>';
	} else if (FUNC10(a_util->patch, b_util->patch)) {
		color = color_commit;
		status = '!';
	} else {
		color = color_commit;
		status = '=';
	}

	FUNC9(buf);
	FUNC8(buf, status == '!' ? color_old : color);
	if (!a_util)
		FUNC7(buf, "%*s:  %s ", patch_no_width, "-", dashes->buf);
	else
		FUNC7(buf, "%*d:  %s ", patch_no_width, a_util->i + 1,
			    FUNC1(&a_util->oid, DEFAULT_ABBREV));

	if (status == '!')
		FUNC7(buf, "%s%s", color_reset, color);
	FUNC5(buf, status);
	if (status == '!')
		FUNC7(buf, "%s%s", color_reset, color_new);

	if (!b_util)
		FUNC7(buf, " %*s:  %s", patch_no_width, "-", dashes->buf);
	else
		FUNC7(buf, " %*d:  %s", patch_no_width, b_util->i + 1,
			    FUNC1(&b_util->oid, DEFAULT_ABBREV));

	commit = FUNC3(the_repository, oid);
	if (commit) {
		if (status == '!')
			FUNC7(buf, "%s%s", color_reset, color);

		FUNC5(buf, ' ');
		FUNC4(CMIT_FMT_ONELINE, commit, buf);
	}
	FUNC7(buf, "%s\n", color_reset);

	FUNC2(buf->buf, buf->len, 1, diffopt->file);
}