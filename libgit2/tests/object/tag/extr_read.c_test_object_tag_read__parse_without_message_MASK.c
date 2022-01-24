#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * message; } ;
typedef  TYPE_1__ git_tag ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  short_tag_id ; 
 int /*<<< orphan*/  short_tagged_commit ; 

void FUNC15(void)
{
	/* read and parse a tag without a message field */
	git_repository *short_tag_repo;
	git_tag *short_tag;
	git_commit *commit;
	git_oid id, id_commit;

	/* TODO: This is a little messy */
	FUNC3(FUNC9(&short_tag_repo, FUNC2("short_tag.git")));

	FUNC7(&id, short_tag_id);
	FUNC7(&id_commit, short_tagged_commit);

	FUNC3(FUNC12(&short_tag, short_tag_repo, &id));
	FUNC0(short_tag != NULL);

	FUNC1(FUNC13(short_tag), "no_description");
	FUNC0(FUNC6(&id, FUNC11(short_tag)) == 0);
	FUNC0(short_tag->message == NULL);

	FUNC3(FUNC14((git_object **)&commit, short_tag));
	FUNC0(commit != NULL);

	FUNC0(FUNC6(&id_commit, FUNC5(commit)) == 0);

	FUNC10(short_tag);
	FUNC4(commit);
	FUNC8(short_tag_repo);
}