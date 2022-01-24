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
struct stat {int st_mode; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct stat*) ; 
 int FUNC8 (int) ; 

void FUNC9(
	mode_t dir_mode, mode_t file_mode,
	mode_t expected_dir_mode, mode_t expected_file_mode)
{
	git_odb *odb;
	git_odb_backend *backend;
	git_oid oid;
	struct stat statbuf;
	mode_t mask, os_mask;

	/* Windows does not return group/user bits from stat,
	* files are never executable.
	*/
#ifdef GIT_WIN32
	os_mask = 0600;
#else
	os_mask = 0777;
#endif

	mask = FUNC8(0);
	FUNC8(mask);

	FUNC1(FUNC5(&odb));
	FUNC1(FUNC3(&backend, "test-objects", -1, 0, dir_mode, file_mode));
	FUNC1(FUNC2(odb, backend, 1));
	FUNC1(FUNC6(&oid, odb, "Test data\n", 10, GIT_OBJECT_BLOB));

	FUNC1(FUNC7("test-objects/67", &statbuf));
	FUNC0(statbuf.st_mode & os_mask, (expected_dir_mode & ~mask) & os_mask);

	FUNC1(FUNC7("test-objects/67/b808feb36201507a77f85e6d898f0a2836e4a5", &statbuf));
	FUNC0(statbuf.st_mode & os_mask, (expected_file_mode & ~mask) & os_mask);

	FUNC4(odb);
}