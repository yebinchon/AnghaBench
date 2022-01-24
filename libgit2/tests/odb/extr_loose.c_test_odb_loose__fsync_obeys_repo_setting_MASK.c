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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ p_fsync__cnt ; 

void FUNC8(void)
{
	git_repository *repo;
	git_odb *odb;
	git_oid oid;

	FUNC1(FUNC5(&repo, "test-objects", 1));
	FUNC1(FUNC6(&odb, repo));
	FUNC1(FUNC3(&oid, odb, "No fsync here\n", 14, GIT_OBJECT_BLOB));
	FUNC0(p_fsync__cnt == 0);
	FUNC4(repo);

	FUNC1(FUNC7(&repo, "test-objects"));
	FUNC2(repo, "core.fsyncObjectFiles", true);
	FUNC1(FUNC6(&odb, repo));
	FUNC1(FUNC3(&oid, odb, "Now fsync\n", 10, GIT_OBJECT_BLOB));
	FUNC0(p_fsync__cnt > 0);
	FUNC4(repo);
}