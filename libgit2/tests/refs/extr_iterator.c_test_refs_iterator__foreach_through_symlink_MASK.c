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
typedef  int /*<<< orphan*/  git_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  refcmp_cb ; 
 int /*<<< orphan*/  refnames_with_symlink ; 
 int /*<<< orphan*/  refs_foreach_cb ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_vector output;

#ifdef GIT_WIN32
	cl_skip();
#endif

	FUNC2(FUNC5(&output, 32, &refcmp_cb));

	FUNC2(FUNC6("refs", 0777));
	FUNC1("refs/a", "1234567890123456789012345678901234567890");
	FUNC1("refs/b", "1234567890123456789012345678901234567890");
	FUNC1("refs/c", "1234567890123456789012345678901234567890");
	FUNC1("refs/d", "1234567890123456789012345678901234567890");

	FUNC2(FUNC7("../../../refs", "testrepo.git/refs/heads/link"));

	FUNC2(FUNC4(repo, refs_foreach_cb, &output));
	FUNC0(refnames_with_symlink, &output);
}