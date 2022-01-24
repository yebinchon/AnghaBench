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
typedef  scalar_t__ git_time_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,char const*) ; 

__attribute__((used)) static int FUNC10(git_object **out, git_reference **ref, const char *spec, size_t identifier_len, git_repository* repo, const char *curly_braces_content)
{
	bool is_numeric;
	int parsed = 0, error = -1;
	git_buf identifier = GIT_BUF_INIT;
	git_time_t timestamp;

	FUNC0(*out == NULL);

	if (FUNC4(&identifier, spec, identifier_len) < 0)
		return -1;

	is_numeric = !FUNC9(&parsed, curly_braces_content);

	if (*curly_braces_content == '-' && (!is_numeric || parsed == 0)) {
		error = GIT_EINVALIDSPEC;
		goto cleanup;
	}

	if (is_numeric) {
		if (parsed < 0)
			error = FUNC5(out, ref, repo, FUNC2(&identifier), -parsed);
		else
			error = FUNC7(out, ref, repo, FUNC2(&identifier), parsed);

		goto cleanup;
	}

	if (!FUNC8(curly_braces_content, "u") || !FUNC8(curly_braces_content, "upstream")) {
		error = FUNC6(ref, FUNC2(&identifier), repo);

		goto cleanup;
	}

	if (FUNC1(&timestamp, curly_braces_content) < 0)
		goto cleanup;

	error = FUNC7(out, ref, repo, FUNC2(&identifier), (size_t)timestamp);

cleanup:
	FUNC3(&identifier);
	return error;
}