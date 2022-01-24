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
typedef  int /*<<< orphan*/  git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_index *result;
	const git_index_entry *entry;

	FUNC1(FUNC5(&result, "trivial-4", "trivial-4-branch"));

	FUNC0((entry = FUNC3(result, "new-and-different.txt", 0)) == NULL);
	FUNC0(FUNC4(result) == 0);

	FUNC0(FUNC6(result) == 2);
	FUNC0(entry = FUNC3(result, "new-and-different.txt", 2));
	FUNC0(entry = FUNC3(result, "new-and-different.txt", 3));

	FUNC2(result);
}