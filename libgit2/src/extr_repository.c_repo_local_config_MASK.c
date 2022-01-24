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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CONFIG_FILENAME_INREPO ; 
 int /*<<< orphan*/  GIT_CONFIG_FILE_MODE ; 
 int /*<<< orphan*/  GIT_CONFIG_LEVEL_LOCAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
	git_config **out,
	git_buf *config_dir,
	git_repository *repo,
	const char *repo_dir)
{
	int error = 0;
	git_config *parent;
	const char *cfg_path;

	if (FUNC2(config_dir, repo_dir, GIT_CONFIG_FILENAME_INREPO) < 0)
		return -1;
	cfg_path = FUNC1(config_dir);

	/* make LOCAL config if missing */
	if (!FUNC8(cfg_path) &&
		(error = FUNC0(cfg_path, GIT_CONFIG_FILE_MODE)) < 0)
		return error;

	/* if no repo, just open that file directly */
	if (!repo)
		return FUNC6(out, cfg_path);

	/* otherwise, open parent config and get that level */
	if ((error = FUNC9(&parent, repo)) < 0)
		return error;

	if (FUNC5(out, parent, GIT_CONFIG_LEVEL_LOCAL) < 0) {
		FUNC7();

		if (!(error = FUNC3(
				parent, cfg_path, GIT_CONFIG_LEVEL_LOCAL, repo, false)))
			error = FUNC5(out, parent, GIT_CONFIG_LEVEL_LOCAL);
	}

	FUNC4(parent);

	return error;
}