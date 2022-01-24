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
struct TYPE_5__ {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	git_index *idx;
	git_repository *repo;
	git_index_entry entry = {0};
	git_oid tree_id;

	FUNC2(FUNC5(&idx));

	FUNC2(FUNC7(&entry.id, "8312e0a89a9cbab77c732b6bc39b51a783e3a318"));
	entry.path = "foo";
	entry.mode = GIT_FILEMODE_BLOB;
	FUNC2(FUNC3(idx, &entry));

	FUNC2(FUNC9(&repo, "./invalid-id", 0));

	FUNC1(FUNC6(&tree_id, idx, repo));

	FUNC4(idx);
	FUNC8(repo);

	FUNC0("invalid-id");
}