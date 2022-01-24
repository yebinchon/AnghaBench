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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int output_format; scalar_t__ break_opt; int /*<<< orphan*/  detect_rename; } ;
struct rev_info {int diff; int verbose_header; int show_root_diff; int always_show_header; int use_terminator; TYPE_1__ diffopt; } ;
struct repository {int dummy; } ;
struct pretty_print_context {int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_DETECT_RENAME ; 
 int DIFF_FORMAT_SHORTSTAT ; 
 int DIFF_FORMAT_SUMMARY ; 
 struct strbuf STRBUF_INIT ; 
 unsigned int SUMMARY_INITIAL_COMMIT ; 
 unsigned int SUMMARY_SHOW_AUTHOR_DATE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ advice_implicit_identity ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rev_info*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct rev_info*,struct commit*) ; 
 struct commit* FUNC9 (struct repository*,struct object_id const*) ; 
 scalar_t__ FUNC10 (struct commit*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct repository*,struct rev_info*,char const*) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char*) ; 
 scalar_t__ FUNC19 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC21 (char const*,char*) ; 

void FUNC22(struct repository *r,
			  const char *prefix,
			  const struct object_id *oid,
			  unsigned int flags)
{
	struct rev_info rev;
	struct commit *commit;
	struct strbuf format = STRBUF_INIT;
	const char *head;
	struct pretty_print_context pctx = {0};
	struct strbuf author_ident = STRBUF_INIT;
	struct strbuf committer_ident = STRBUF_INIT;

	commit = FUNC9(r, oid);
	if (!commit)
		FUNC2(FUNC0("couldn't look up newly created commit"));
	if (FUNC10(commit))
		FUNC2(FUNC0("could not parse newly created commit"));

	FUNC18(&format, "format:%h] %s");

	FUNC5(commit, "%an <%ae>", &author_ident, &pctx);
	FUNC5(commit, "%cn <%ce>", &committer_ident, &pctx);
	if (FUNC19(&author_ident, &committer_ident)) {
		FUNC18(&format, "\n Author: ");
		FUNC16(&format, &author_ident);
	}
	if (flags & SUMMARY_SHOW_AUTHOR_DATE) {
		struct strbuf date = STRBUF_INIT;

		FUNC5(commit, "%ad", &date, &pctx);
		FUNC18(&format, "\n Date: ");
		FUNC16(&format, &date);
		FUNC20(&date);
	}
	if (!FUNC1()) {
		FUNC18(&format, "\n Committer: ");
		FUNC16(&format, &committer_ident);
		if (advice_implicit_identity) {
			FUNC17(&format, '\n');
			FUNC18(&format, FUNC7());
		}
	}
	FUNC20(&author_ident);
	FUNC20(&committer_ident);

	FUNC12(r, &rev, prefix);
	FUNC14(0, NULL, &rev, NULL);

	rev.diff = 1;
	rev.diffopt.output_format =
		DIFF_FORMAT_SHORTSTAT | DIFF_FORMAT_SUMMARY;

	rev.verbose_header = 1;
	rev.show_root_diff = 1;
	FUNC6(format.buf, &rev);
	rev.always_show_header = 0;
	rev.diffopt.detect_rename = DIFF_DETECT_RENAME;
	rev.diffopt.break_opt = 0;
	FUNC4(&rev.diffopt);

	head = FUNC13("HEAD", 0, NULL, NULL);
	if (!head)
		FUNC3(FUNC0("unable to resolve HEAD after creating commit"));
	if (!FUNC21(head, "HEAD"))
		head = FUNC0("detached HEAD");
	else
		FUNC15(head, "refs/heads/", &head);
	FUNC11("[%s%s ", head, (flags & SUMMARY_INITIAL_COMMIT) ?
						FUNC0(" (root-commit)") : "");

	if (!FUNC8(&rev, commit)) {
		rev.always_show_header = 1;
		rev.use_terminator = 1;
		FUNC8(&rev, commit);
	}

	FUNC20(&format);
}