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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC16(
	bool should_ignore_case,
	int expected_lower_cased_file_status,
	int expected_camel_cased_file_status)
{
	unsigned int status;
	git_buf lower_case_path = GIT_BUF_INIT, camel_case_path = GIT_BUF_INIT;
	git_repository *repo, *repo2;

	repo = FUNC4("empty_standard_repo");
	FUNC3(FUNC11(repo), "dummy-marker.txt");

	FUNC5(repo, "core.ignorecase", should_ignore_case);

	FUNC2(FUNC8(&lower_case_path,
		FUNC12(repo), "plop"));

	FUNC1(FUNC6(&lower_case_path), "");

	FUNC15(repo, "plop");

	FUNC2(FUNC10(&repo2, "./empty_standard_repo"));

	FUNC2(FUNC13(&status, repo2, "plop"));
	FUNC0(GIT_STATUS_CURRENT, status);

	FUNC2(FUNC8(&camel_case_path,
		FUNC12(repo), "Plop"));

	FUNC2(FUNC14(FUNC6(&lower_case_path), FUNC6(&camel_case_path)));

	FUNC2(FUNC13(&status, repo2, "plop"));
	FUNC0(expected_lower_cased_file_status, status);

	FUNC2(FUNC13(&status, repo2, "Plop"));
	FUNC0(expected_camel_cased_file_status, status);

	FUNC9(repo2);
	FUNC7(&lower_case_path);
	FUNC7(&camel_case_path);
}