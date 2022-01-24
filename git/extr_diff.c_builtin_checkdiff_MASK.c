#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct checkdiff_t {char const* filename; int ws_rule; int ctxlen; int status; scalar_t__ flags; int /*<<< orphan*/  conflict_marker_size; struct diff_options* o; scalar_t__ lineno; } ;
typedef  struct checkdiff_t xpparam_t ;
typedef  int /*<<< orphan*/  xpp ;
typedef  int /*<<< orphan*/  xecfg ;
typedef  struct checkdiff_t xdemitconf_t ;
struct emit_callback {int ws_rule; int blank_at_eof_in_postimage; } ;
struct TYPE_4__ {int check_failed; } ;
struct diff_options {TYPE_1__ flags; int /*<<< orphan*/  file; TYPE_2__* repo; } ;
struct diff_filespec {int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  mmfile_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int WS_BLANK_AT_EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct emit_callback*) ; 
 int /*<<< orphan*/  checkdiff_consume ; 
 int /*<<< orphan*/  checkdiff_consume_hunk ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (TYPE_2__*,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_filespec*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct checkdiff_t*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct checkdiff_t*,struct checkdiff_t*,struct checkdiff_t*) ; 

__attribute__((used)) static void FUNC11(const char *name_a, const char *name_b,
			      const char *attr_path,
			      struct diff_filespec *one,
			      struct diff_filespec *two,
			      struct diff_options *o)
{
	mmfile_t mf1, mf2;
	struct checkdiff_t data;

	if (!two)
		return;

	FUNC7(&data, 0, sizeof(data));
	data.filename = name_b ? name_b : name_a;
	data.lineno = 0;
	data.o = o;
	data.ws_rule = FUNC9(o->repo->index, attr_path);
	data.conflict_marker_size = FUNC6(o->repo->index, attr_path);

	if (FUNC4(o->repo, &mf1, one) < 0 ||
	    FUNC4(o->repo, &mf2, two) < 0)
		FUNC1("unable to read files to diff");

	/*
	 * All the other codepaths check both sides, but not checking
	 * the "old" side here is deliberate.  We are checking the newly
	 * introduced changes, and as long as the "new" side is text, we
	 * can and should check what it introduces.
	 */
	if (FUNC2(o->repo, two))
		goto free_and_return;
	else {
		/* Crazy xdl interfaces.. */
		xpparam_t xpp;
		xdemitconf_t xecfg;

		FUNC7(&xpp, 0, sizeof(xpp));
		FUNC7(&xecfg, 0, sizeof(xecfg));
		xecfg.ctxlen = 1; /* at least one context line */
		xpp.flags = 0;
		if (FUNC10(&mf1, &mf2, checkdiff_consume_hunk,
				  checkdiff_consume, &data,
				  &xpp, &xecfg))
			FUNC1("unable to generate checkdiff for %s", one->path);

		if (data.ws_rule & WS_BLANK_AT_EOF) {
			struct emit_callback ecbdata;
			int blank_at_eof;

			ecbdata.ws_rule = data.ws_rule;
			FUNC0(&mf1, &mf2, &ecbdata);
			blank_at_eof = ecbdata.blank_at_eof_in_postimage;

			if (blank_at_eof) {
				static char *err;
				if (!err)
					err = FUNC8(WS_BLANK_AT_EOF);
				FUNC5(o->file, "%s:%d: %s.\n",
					data.filename, blank_at_eof, err);
				data.status = 1; /* report errors */
			}
		}
	}
 free_and_return:
	FUNC3(one);
	FUNC3(two);
	if (data.status)
		o->flags.check_failed = 1;
}