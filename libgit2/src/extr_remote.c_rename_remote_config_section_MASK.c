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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
	git_repository *repo,
	const char *old_name,
	const char *new_name)
{
	git_buf old_section_name = GIT_BUF_INIT,
		new_section_name = GIT_BUF_INIT;
	int error = -1;

	if (FUNC2(&old_section_name, "remote.%s", old_name) < 0)
		goto cleanup;

	if (new_name &&
		(FUNC2(&new_section_name, "remote.%s", new_name) < 0))
			goto cleanup;

	error = FUNC3(
		repo,
		FUNC0(&old_section_name),
		new_name ? FUNC0(&new_section_name) : NULL);

cleanup:
	FUNC1(&old_section_name);
	FUNC1(&new_section_name);

	return error;
}