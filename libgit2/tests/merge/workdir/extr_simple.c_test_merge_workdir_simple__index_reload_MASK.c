#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 char* THEIRS_SIMPLE_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC14(void)
{
	git_repository *tmp_repo;
	git_annotated_commit *their_heads[1];
	git_oid their_oid;
	git_index_entry entry = {0};
	git_index *tmp_index;

	FUNC0(FUNC12(&tmp_repo, FUNC13(repo)));
	FUNC0(FUNC11(&tmp_index, tmp_repo));
	FUNC0(FUNC6(repo_index, 0));

	entry.mode = GIT_FILEMODE_BLOB;
	FUNC0(FUNC9(&entry.id, "11deab00b2d3a6f5a3073988ac050c2d7b6655e2"));
	entry.path = "automergeable.txt";
	FUNC0(FUNC3(repo_index, &entry));

	FUNC0(FUNC4(tmp_index, "automergeable.txt"));
	FUNC0(FUNC7(tmp_index));

	FUNC0(FUNC9(&their_oid, THEIRS_SIMPLE_OID));
	FUNC0(FUNC2(&their_heads[0], repo, &their_oid));
	FUNC0(FUNC8(repo, (const git_annotated_commit **)their_heads, 1, NULL, NULL));

	FUNC5(tmp_index);
	FUNC10(tmp_repo);
	FUNC1(their_heads[0]);
}