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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_SORT_TIME ; 
 int /*<<< orphan*/  _walk ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_oid from_oid, to_oid, oid;
	int i = 0;

	FUNC7(NULL);
	FUNC6(_walk, GIT_SORT_TIME);

	FUNC1(FUNC2(&to_oid, "5b5b025afb0b4c913b4c338a42934a3863bf3644"));
	FUNC1(FUNC2(&from_oid, "a4a7dce85cf63874e984719f4fdd239f5145052f"));

	FUNC1(FUNC5(_walk, &to_oid));
	FUNC1(FUNC3(_walk, &from_oid));

	while (FUNC4(&oid, _walk) == 0)
		i++;

	FUNC0(i, 0);
}