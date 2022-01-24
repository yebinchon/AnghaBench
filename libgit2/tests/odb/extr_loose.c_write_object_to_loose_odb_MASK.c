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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int fsync)
{
	git_odb *odb;
	git_odb_backend *backend;
	git_oid oid;

	FUNC0(FUNC4(&odb));
	FUNC0(FUNC2(&backend, "test-objects", -1, fsync, 0777, 0666));
	FUNC0(FUNC1(odb, backend, 1));
	FUNC0(FUNC5(&oid, odb, "Test data\n", 10, GIT_OBJECT_BLOB));
	FUNC3(odb);
}