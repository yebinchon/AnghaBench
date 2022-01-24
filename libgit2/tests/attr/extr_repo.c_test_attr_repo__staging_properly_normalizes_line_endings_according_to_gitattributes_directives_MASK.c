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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GITATTR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	git_index* index;

	FUNC2(FUNC4(&index, g_repo));

	FUNC0(".gitattributes", GITATTR);

	FUNC1(index, "text.txt", "22c74203bace3c2e950278c7ab08da0fca9f4e9b");
	FUNC1(index, "huh.dunno", "22c74203bace3c2e950278c7ab08da0fca9f4e9b");
	FUNC1(index, "binary.data", "66eeff1fcbacf589e6d70aa70edd3fce5be2b37c");

	FUNC3(index);
}