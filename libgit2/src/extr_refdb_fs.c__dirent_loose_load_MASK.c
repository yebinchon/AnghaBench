#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  gitpath; int /*<<< orphan*/  direach_flags; } ;
typedef  TYPE_1__ refdb_fs_backend ;
struct TYPE_9__ {char* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int (*) (void*,TYPE_2__*),TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *payload, git_buf *full_path)
{
	refdb_fs_backend *backend = payload;
	const char *file_path;

	if (FUNC0(full_path->ptr, ".lock") == 0)
		return 0;

	if (FUNC3(full_path->ptr)) {
		int error = FUNC2(
			full_path, backend->direach_flags, _dirent_loose_load, backend);
		/* Race with the filesystem, ignore it */
		if (error == GIT_ENOTFOUND) {
			FUNC1();
			return 0;
		}

		return error;
	}

	file_path = full_path->ptr + FUNC5(backend->gitpath);

	return FUNC4(backend, file_path);
}