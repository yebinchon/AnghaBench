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
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(git_buf *out, git_commit* commit)
{
	const char *summary = FUNC6(commit);
	FUNC0(summary);

	if (FUNC1(out, FUNC5(commit)) < 0)
		return -1;

	FUNC3(out, ' ');
	FUNC4(out, summary);
	FUNC3(out, '\n');

	return FUNC2(out) ? -1 : 0;
}