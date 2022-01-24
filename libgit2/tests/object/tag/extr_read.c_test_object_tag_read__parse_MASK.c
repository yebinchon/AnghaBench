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
typedef  int /*<<< orphan*/  git_tag ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tag1_id ; 
 int /*<<< orphan*/  tag2_id ; 
 int /*<<< orphan*/  tagged_commit ; 

void FUNC13(void)
{
	/* read and parse a tag from the repository */
	git_tag *tag1, *tag2;
	git_commit *commit;
	git_oid id1, id2, id_commit;

	FUNC6(&id1, tag1_id);
	FUNC6(&id2, tag2_id);
	FUNC6(&id_commit, tagged_commit);

	FUNC2(FUNC9(&tag1, g_repo, &id1));

	FUNC1(FUNC10(tag1), "test");
	FUNC0(FUNC12(tag1) == GIT_OBJECT_TAG);

	FUNC2(FUNC11((git_object **)&tag2, tag1));
	FUNC0(tag2 != NULL);

	FUNC0(FUNC5(&id2, FUNC8(tag2)) == 0);

	FUNC2(FUNC11((git_object **)&commit, tag2));
	FUNC0(commit != NULL);

	FUNC0(FUNC5(&id_commit, FUNC4(commit)) == 0);

	FUNC7(tag1);
	FUNC7(tag2);
	FUNC3(commit);
}