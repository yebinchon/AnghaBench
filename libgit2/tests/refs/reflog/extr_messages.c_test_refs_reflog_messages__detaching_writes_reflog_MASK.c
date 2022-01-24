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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*,char*) ; 

void FUNC7(void)
{
	git_signature *sig;
	git_oid id;
	const char *msg;

	FUNC0(FUNC6(&sig, "me", "foo@example.com"));

	msg = "checkout: moving from master to e90810b8df3e80c413d903f631643c716887138d";
	FUNC2(&id, "e90810b8df3e80c413d903f631643c716887138d");
	FUNC0(FUNC4(g_repo, &id));
	FUNC1(g_repo, GIT_HEAD_FILE, 0,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"e90810b8df3e80c413d903f631643c716887138d",
		NULL, msg);

	msg = "checkout: moving from e90810b8df3e80c413d903f631643c716887138d to haacked";
	FUNC0(FUNC3(g_repo, "refs/heads/haacked"));
	FUNC1(g_repo, GIT_HEAD_FILE, 0,
		"e90810b8df3e80c413d903f631643c716887138d",
		"258f0e2a959a364e40ed6603d5d44fbb24765b10",
		NULL, msg);

	FUNC5(sig);
}