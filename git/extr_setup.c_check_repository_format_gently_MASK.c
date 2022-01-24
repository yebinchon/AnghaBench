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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct repository_format {scalar_t__ version; int is_bare; scalar_t__ work_tree; int /*<<< orphan*/  unknown_extensions; scalar_t__ worktree_config; int /*<<< orphan*/  partial_clone; int /*<<< orphan*/  precious_objects; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct repository_format*) ; 
 int /*<<< orphan*/  git_work_tree_cfg ; 
 int inside_work_tree ; 
 int is_bare_repository_cfg ; 
 int /*<<< orphan*/  FUNC4 (struct repository_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_worktree_config ; 
 int /*<<< orphan*/  repository_format_precious_objects ; 
 scalar_t__ repository_format_worktree_config ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct repository_format*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(const char *gitdir, struct repository_format *candidate, int *nongit_ok)
{
	struct strbuf sb = STRBUF_INIT;
	struct strbuf err = STRBUF_INIT;
	int has_common;

	has_common = FUNC2(&sb, gitdir);
	FUNC7(&sb, "/config");
	FUNC4(candidate, sb.buf);
	FUNC8(&sb);

	/*
	 * For historical use of check_repository_format() in git-init,
	 * we treat a missing config as a silent "ok", even when nongit_ok
	 * is unset.
	 */
	if (candidate->version < 0)
		return 0;

	if (FUNC10(candidate, &err) < 0) {
		if (nongit_ok) {
			FUNC11("%s", err.buf);
			FUNC8(&err);
			*nongit_ok = -1;
			return -1;
		}
		FUNC0("%s", err.buf);
	}

	repository_format_precious_objects = candidate->precious_objects;
	FUNC5(candidate->partial_clone);
	repository_format_worktree_config = candidate->worktree_config;
	FUNC9(&candidate->unknown_extensions, 0);

	if (repository_format_worktree_config) {
		/*
		 * pick up core.bare and core.worktree from per-worktree
		 * config if present
		 */
		FUNC6(&sb, "%s/config.worktree", gitdir);
		FUNC3(read_worktree_config, sb.buf, candidate);
		FUNC8(&sb);
		has_common = 0;
	}

	if (!has_common) {
		if (candidate->is_bare != -1) {
			is_bare_repository_cfg = candidate->is_bare;
			if (is_bare_repository_cfg == 1)
				inside_work_tree = -1;
		}
		if (candidate->work_tree) {
			FUNC1(git_work_tree_cfg);
			git_work_tree_cfg = FUNC12(candidate->work_tree);
			inside_work_tree = -1;
		}
	}

	return 0;
}