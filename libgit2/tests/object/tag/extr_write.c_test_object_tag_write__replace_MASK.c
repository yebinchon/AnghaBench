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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tagged_commit ; 
 int /*<<< orphan*/  tagger_email ; 
 int /*<<< orphan*/  tagger_message ; 
 int /*<<< orphan*/  tagger_name ; 

void FUNC13(void)
{
	/* Replace an already existing tag */
	git_oid target_id, tag_id, old_tag_id;
	git_signature *tagger;
	git_reference *ref_tag;
	git_object *target;

	FUNC6(&target_id, tagged_commit);
	FUNC1(FUNC3(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

	FUNC1(FUNC8(&ref_tag, g_repo, "refs/tags/e90810b"));
	FUNC5(&old_tag_id, FUNC9(ref_tag));
	FUNC7(ref_tag);

	/* create signature */
	FUNC1(FUNC11(&tagger, tagger_name, tagger_email, 123456789, 60));

	FUNC1(FUNC12(
                              &tag_id, /* out id */
                              g_repo,
                              "e90810b",
                              target,
                              tagger,
                              tagger_message,
                              1));

	FUNC2(target);
	FUNC10(tagger);

	FUNC1(FUNC8(&ref_tag, g_repo, "refs/tags/e90810b"));
	FUNC0(FUNC4(FUNC9(ref_tag), &tag_id) == 0);
	FUNC0(FUNC4(FUNC9(ref_tag), &old_tag_id) != 0);

	FUNC7(ref_tag);
}