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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  g_tx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC13(void)
{
	git_reference *ref;
	git_oid id;

	FUNC4(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");

	FUNC2(FUNC10(g_tx, "refs/heads/master"));
	FUNC2(FUNC10(g_tx, "HEAD"));
	FUNC2(FUNC11(g_tx, "refs/heads/master", "refs/heads/foo", NULL, NULL));
	FUNC2(FUNC12(g_tx, "HEAD", &id, NULL, NULL));
	FUNC2(FUNC9(g_tx));

	FUNC2(FUNC6(&ref, g_repo, "refs/heads/master"));
	FUNC1("refs/heads/foo", FUNC7(ref));
	FUNC5(ref);

	FUNC2(FUNC6(&ref, g_repo, "HEAD"));
	FUNC0(!FUNC3(&id, FUNC8(ref)));
	FUNC5(ref);
}