#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t git_path_gitfile ;
typedef  int git_path_fs ;
struct TYPE_3__ {char* file; size_t filelen; char* hash; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
#define  GIT_PATH_FS_GENERIC 130 
#define  GIT_PATH_FS_HFS 129 
#define  GIT_PATH_FS_NTFS 128 
 size_t GIT_PATH_GITFILE_GITIGNORE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* gitfiles ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t,char const*,size_t,char const*) ; 

extern int FUNC4(const char *path, size_t pathlen, git_path_gitfile gitfile, git_path_fs fs)
{
	const char *file, *hash;
	size_t filelen;

	if (!(gitfile >= GIT_PATH_GITFILE_GITIGNORE && gitfile < FUNC0(gitfiles))) {
		FUNC1(GIT_ERROR_OS, "invalid gitfile for path validation");
		return -1;
	}

	file = gitfiles[gitfile].file;
	filelen = gitfiles[gitfile].filelen;
	hash = gitfiles[gitfile].hash;

	switch (fs) {
	case GIT_PATH_FS_GENERIC:
		return !FUNC3(path, pathlen, file, filelen, hash) ||
		       !FUNC2(path, pathlen, file, filelen);
	case GIT_PATH_FS_NTFS:
		return !FUNC3(path, pathlen, file, filelen, hash);
	case GIT_PATH_FS_HFS:
		return !FUNC2(path, pathlen, file, filelen);
	default:
		FUNC1(GIT_ERROR_OS, "invalid filesystem for path validation");
		return -1;
	}
}