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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const char *gitdir_path)
{
	git_buf path = GIT_BUF_INIT;
	int is_insensitive = -1;

	if (!FUNC2(&path, gitdir_path, "CoNfIg"))
		is_insensitive = FUNC3(FUNC0(&path));

	FUNC1(&path);
	return is_insensitive;
}