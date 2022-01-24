#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * _config; } ;
typedef  TYPE_1__ git_repository ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(git_config **out, git_repository *repo)
{
	int error = 0;

	if (repo->_config == NULL) {
		git_buf global_buf = GIT_BUF_INIT;
		git_buf xdg_buf = GIT_BUF_INIT;
		git_buf system_buf = GIT_BUF_INIT;
		git_buf programdata_buf = GIT_BUF_INIT;
		git_config *config;

		FUNC5(&global_buf);
		FUNC8(&xdg_buf);
		FUNC7(&system_buf);
		FUNC6(&programdata_buf);

		/* If there is no global file, open a backend for it anyway */
		if (FUNC3(&global_buf) == 0)
			FUNC4(&global_buf);

		error = FUNC10(
			&config, repo,
			FUNC11(&global_buf),
			FUNC11(&xdg_buf),
			FUNC11(&system_buf),
			FUNC11(&programdata_buf));
		if (!error) {
			FUNC0(config, repo);

			config = FUNC1(&repo->_config, NULL, config);
			if (config != NULL) {
				FUNC0(config, NULL);
				FUNC9(config);
			}
		}

		FUNC2(&global_buf);
		FUNC2(&xdg_buf);
		FUNC2(&system_buf);
		FUNC2(&programdata_buf);
	}

	*out = repo->_config;
	return error;
}