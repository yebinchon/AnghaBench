#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct git_pack_file {TYPE_1__ refcount; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git__pack_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (void**,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_repository *repo1, *repo2;
	git_object *obj1, *obj2;
	git_oid id;
	size_t pos;
	void *data;
	int error;

	FUNC2(FUNC7(&repo1, FUNC1("testrepo.git")));
	FUNC2(FUNC7(&repo2, FUNC1("testrepo.git")));

	FUNC5(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750");

	FUNC2(FUNC4(&obj1, repo1, &id, GIT_OBJECT_ANY));
	FUNC2(FUNC4(&obj2, repo2, &id, GIT_OBJECT_ANY));

	pos = 0;
	while ((error = FUNC8(&data, git__pack_cache, &pos, NULL)) == 0) {
		struct git_pack_file *pack = (struct git_pack_file *) data;

		FUNC0(2, pack->refcount.val);
	}

	FUNC0(3, FUNC9(git__pack_cache));

	FUNC3(obj1);
	FUNC3(obj2);
	FUNC6(repo1);
	FUNC6(repo2);

	/* we don't want to keep the packs open after the repos go away */
	FUNC0(0, FUNC9(git__pack_cache));
}