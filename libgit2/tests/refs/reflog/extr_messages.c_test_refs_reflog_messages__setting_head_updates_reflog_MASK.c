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
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,char*) ; 

void FUNC12(void)
{
	git_object *tag;
	git_signature *sig;
	git_annotated_commit *annotated;

	FUNC0(FUNC11(&sig, "me", "foo@example.com"));

	FUNC0(FUNC6(g_repo, "refs/heads/haacked")); /* 4 */
	FUNC0(FUNC6(g_repo, "refs/heads/unborn"));
	FUNC0(FUNC9(&tag, g_repo, "tags/test"));
	FUNC0(FUNC7(g_repo, FUNC5(tag))); /* 3 */
	FUNC0(FUNC6(g_repo, "refs/heads/haacked"));        /* 2 */
	FUNC0(FUNC6(g_repo, "refs/tags/test"));            /* 1 */
	FUNC0(FUNC6(g_repo, "refs/remotes/test/master"));  /* 0 */

	FUNC1(g_repo, GIT_HEAD_FILE, 4,
		NULL, "refs/heads/haacked",
		"foo@example.com",
		"checkout: moving from master to haacked");
	FUNC1(g_repo, GIT_HEAD_FILE, 3,
		NULL, "tags/test^{commit}",
		"foo@example.com",
		"checkout: moving from unborn to e90810b8df3e80c413d903f631643c716887138d");
	FUNC1(g_repo, GIT_HEAD_FILE, 2,
		"tags/test^{commit}", "refs/heads/haacked",
		"foo@example.com",
		"checkout: moving from e90810b8df3e80c413d903f631643c716887138d to haacked");
	FUNC1(g_repo, GIT_HEAD_FILE, 1,
		"refs/heads/haacked", "tags/test^{commit}",
		"foo@example.com",
		"checkout: moving from haacked to test");
	FUNC1(g_repo, GIT_HEAD_FILE, 0,
		"tags/test^{commit}", "refs/remotes/test/master",
		"foo@example.com",
		"checkout: moving from e90810b8df3e80c413d903f631643c716887138d to test/master");

	FUNC0(FUNC3(&annotated, g_repo, "haacked~0"));
	FUNC0(FUNC8(g_repo, annotated));

	FUNC1(g_repo, GIT_HEAD_FILE, 0,
		NULL, "refs/heads/haacked",
		"foo@example.com",
		"checkout: moving from be3563ae3f795b2b4353bcce3a527ad0a4f7f644 to haacked~0");

	FUNC2(annotated);
	FUNC4(tag);
	FUNC10(sig);
}