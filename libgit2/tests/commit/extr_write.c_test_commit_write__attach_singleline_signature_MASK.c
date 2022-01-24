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
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	const char *sig = "magic word: pretty please";

	const char *data =  "tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\n\
parent 8496071c1b46c854b31185ea97743be6a8774479\n\
author Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\
committer Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\
\n\
a simple commit which works\n";

	const char *complete =  "tree 4b825dc642cb6eb9a060e54bf8d69288fbee4904\n\
parent 8496071c1b46c854b31185ea97743be6a8774479\n\
author Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\
committer Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\
magicsig magic word: pretty please\n\
\n\
a simple commit which works\n";

	git_oid id;
	git_odb *odb;
	git_odb_object *obj;

	FUNC1(FUNC2(&id, g_repo, data, sig, "magicsig"));

	FUNC1(FUNC7(&odb, g_repo));
	FUNC1(FUNC6(&obj, odb, &id));
	FUNC0(complete, FUNC4(obj));

	FUNC5(obj);
	FUNC3(odb);
}