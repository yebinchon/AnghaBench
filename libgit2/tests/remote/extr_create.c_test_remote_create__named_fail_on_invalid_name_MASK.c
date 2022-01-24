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

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  TEST_URL ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	const char *names[] = {
		NULL,
		"Inv@{id",
		"",
		"/",
		"//",
		".lock",
		"a.lock",
	};
	size_t i;

	for (i = 0; i < FUNC0(names); i++) {
		git_remote *remote = NULL;
		FUNC2(GIT_EINVALIDSPEC, FUNC3(&remote, _repo, names[i], TEST_URL));
		FUNC1(remote, NULL);
	}
}