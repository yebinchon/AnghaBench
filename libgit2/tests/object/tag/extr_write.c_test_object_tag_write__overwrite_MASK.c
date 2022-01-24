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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tagged_commit ; 
 int /*<<< orphan*/  tagger_email ; 
 int /*<<< orphan*/  tagger_message ; 
 int /*<<< orphan*/  tagger_name ; 

void FUNC8(void)
{
	/* Attempt to write a tag bearing the same name than an already existing tag */
	git_oid target_id, tag_id;
	git_signature *tagger;
	git_object *target;

	FUNC4(&target_id, tagged_commit);
	FUNC1(FUNC3(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

	/* create signature */
	FUNC1(FUNC6(&tagger, tagger_name, tagger_email, 123456789, 60));

	FUNC0(GIT_EEXISTS, FUNC7(
                              &tag_id, /* out id */
                              g_repo,
                              "e90810b",
                              target,
                              tagger,
                              tagger_message,
                              0));

	FUNC2(target);
	FUNC5(tagger);
}