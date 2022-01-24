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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char const* FUNC6 (char const*) ; 
 char const* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(git_buf *out, git_reference *old, const char *new)
{
	FUNC1(out, "checkout: moving from ");

	if (FUNC9(old) == GIT_REFERENCE_SYMBOLIC)
		FUNC1(out, FUNC6(FUNC7(old)));
	else
		FUNC1(out, FUNC2(FUNC8(old)));

	FUNC1(out, " to ");

	if (FUNC3(new) ||
		FUNC5(new) ||
		FUNC4(new))
		FUNC1(out, FUNC6(new));
	else
		FUNC1(out, new);

	if (FUNC0(out))
		return -1;

	return 0;
}