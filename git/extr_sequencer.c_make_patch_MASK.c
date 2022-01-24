#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  file; int /*<<< orphan*/  use_color; int /*<<< orphan*/  output_format; } ;
struct rev_info {int diff; int disable_stdin; int no_commit_id; TYPE_2__ diffopt; scalar_t__ abbrev; } ;
struct repository {int dummy; } ;
struct replay_opts {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  log_tree_opt ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_PATCH ; 
 int /*<<< orphan*/  GIT_COLOR_NEVER ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_MSG_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (struct commit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct replay_opts*) ; 
 int FUNC9 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC10 (struct rev_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct repository*,struct rev_info*,int /*<<< orphan*/ *) ; 
 char* FUNC13 (struct commit*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct commit*,char const*) ; 
 scalar_t__ FUNC19 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(struct repository *r,
		      struct commit *commit,
		      struct replay_opts *opts)
{
	struct strbuf buf = STRBUF_INIT;
	struct rev_info log_tree_opt;
	const char *subject, *p;
	int res = 0;

	p = FUNC13(commit);
	if (FUNC20(p, FUNC17(p), FUNC11(), 1) < 0)
		return -1;
	if (FUNC19("rebase", "REBASE_HEAD", &commit->object.oid,
		       NULL, REF_NO_DEREF, UPDATE_REFS_MSG_ON_ERR))
		res |= FUNC1(FUNC0("could not update %s"), "REBASE_HEAD");

	FUNC14(&buf, "%s/patch", FUNC8(opts));
	FUNC10(&log_tree_opt, 0, sizeof(log_tree_opt));
	FUNC12(r, &log_tree_opt, NULL);
	log_tree_opt.abbrev = 0;
	log_tree_opt.diff = 1;
	log_tree_opt.diffopt.output_format = DIFF_FORMAT_PATCH;
	log_tree_opt.disable_stdin = 1;
	log_tree_opt.no_commit_id = 1;
	log_tree_opt.diffopt.file = FUNC6(buf.buf, "w");
	log_tree_opt.diffopt.use_color = GIT_COLOR_NEVER;
	if (!log_tree_opt.diffopt.file)
		res |= FUNC2(FUNC0("could not open '%s'"), buf.buf);
	else {
		res |= FUNC9(&log_tree_opt, commit);
		FUNC3(log_tree_opt.diffopt.file);
	}
	FUNC16(&buf);

	FUNC14(&buf, "%s/message", FUNC8(opts));
	if (!FUNC4(buf.buf)) {
		const char *commit_buffer = FUNC7(commit, NULL);
		FUNC5(commit_buffer, &subject);
		res |= FUNC20(subject, FUNC17(subject), buf.buf, 1);
		FUNC18(commit, commit_buffer);
	}
	FUNC15(&buf);

	return res;
}