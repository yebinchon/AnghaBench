#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tag ;
struct TYPE_7__ {int time; int offset; } ;
struct TYPE_8__ {TYPE_1__ when; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_signature ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tagged_commit ; 
 int /*<<< orphan*/  tagger_email ; 
 int /*<<< orphan*/  tagger_message ; 
 int /*<<< orphan*/  tagger_name ; 

void FUNC19(void)
{
	/* write a tag to the repository and read it again */
	git_tag *tag;
	git_oid target_id, tag_id;
	git_signature *tagger;
	const git_signature *tagger1;
	git_reference *ref_tag;
	git_object *target;

	FUNC6(&target_id, tagged_commit);
	FUNC2(FUNC4(&target, g_repo, &target_id, GIT_OBJECT_COMMIT));

	/* create signature */
	FUNC2(FUNC12(&tagger, tagger_name, tagger_email, 123456789, 60));

	FUNC2(
		FUNC13(&tag_id, g_repo,
		  "the-tag", target, tagger, tagger_message, 0)
	);

	FUNC3(target);
	FUNC11(tagger);

	FUNC2(FUNC15(&tag, g_repo, &tag_id));
	FUNC0(FUNC5(FUNC18(tag), &target_id) == 0);

	/* Check attributes were set correctly */
	tagger1 = FUNC17(tag);
	FUNC0(tagger1 != NULL);
	FUNC1(tagger1->name, tagger_name);
	FUNC1(tagger1->email, tagger_email);
	FUNC0(tagger1->when.time == 123456789);
	FUNC0(tagger1->when.offset == 60);

	FUNC1(FUNC16(tag), tagger_message);

	FUNC2(FUNC9(&ref_tag, g_repo, "refs/tags/the-tag"));
	FUNC0(FUNC5(FUNC10(ref_tag), &tag_id) == 0);
	FUNC2(FUNC7(ref_tag));
	FUNC8(ref_tag);

	FUNC14(tag);
}