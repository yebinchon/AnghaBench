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
typedef  int /*<<< orphan*/  oidstr ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(const git_commit *commit)
{
	unsigned int i, max_i;
	char oidstr[GIT_OID_HEXSZ + 1];

	FUNC6(oidstr, sizeof(oidstr), FUNC5(commit));
	FUNC8("tree %s\n", oidstr);

	max_i = (unsigned int)FUNC4(commit);
	for (i = 0; i < max_i; ++i) {
		FUNC6(oidstr, sizeof(oidstr), FUNC3(commit, i));
		FUNC8("parent %s\n", oidstr);
	}

	FUNC7("author", FUNC0(commit));
	FUNC7("committer", FUNC1(commit));

	if (FUNC2(commit))
		FUNC8("\n%s\n", FUNC2(commit));
}