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
typedef  int /*<<< orphan*/  git_tree_entry ;
typedef  int /*<<< orphan*/  git_tree ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC9(const git_tree *tree)
{
	size_t i, max_i = (int)FUNC7(tree);
	char oidstr[GIT_OID_HEXSZ + 1];
	const git_tree_entry *te;

	for (i = 0; i < max_i; ++i) {
		te = FUNC2(tree, i);

		FUNC1(oidstr, sizeof(oidstr), FUNC4(te));

		FUNC8("%06o %s %s\t%s\n",
			FUNC3(te),
			FUNC0(FUNC6(te)),
			oidstr, FUNC5(te));
	}
}