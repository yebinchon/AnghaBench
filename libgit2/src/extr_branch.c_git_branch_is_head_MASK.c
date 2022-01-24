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
typedef  int /*<<< orphan*/  const git_reference ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_EUNBORNBRANCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(
		const git_reference *branch)
{
	git_reference *head;
	bool is_same = false;
	int error;

	FUNC0(branch);

	if (!FUNC2(branch))
		return false;

	error = FUNC5(&head, FUNC4(branch));

	if (error == GIT_EUNBORNBRANCH || error == GIT_ENOTFOUND)
		return false;

	if (error < 0)
		return -1;

	is_same = FUNC6(
		FUNC3(branch),
		FUNC3(head)) == 0;

	FUNC1(head);

	return is_same;
}