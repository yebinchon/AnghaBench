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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 char* TEST_URL ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char const* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char const* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_remote *remote;
	git_config *cfg;
	const char *cfg_val;

	size_t section_count = FUNC4(_repo, "remote\\.");

	FUNC3(FUNC7(&remote, _repo, "valid-name", TEST_URL));

	FUNC2(FUNC9(remote), "valid-name");
	FUNC2(FUNC11(remote), TEST_URL);
	FUNC1(FUNC10(remote), _repo);

	FUNC3(FUNC12(&cfg, _repo));

	FUNC3(FUNC6(&cfg_val, cfg, "remote.valid-name.fetch"));
	FUNC2(cfg_val, "+refs/heads/*:refs/remotes/valid-name/*");

	FUNC3(FUNC6(&cfg_val, cfg, "remote.valid-name.url"));
	FUNC2(cfg_val, TEST_URL);

	FUNC0(section_count + 2, FUNC4(_repo, "remote\\."));

	FUNC5(cfg);
	FUNC8(remote);
}