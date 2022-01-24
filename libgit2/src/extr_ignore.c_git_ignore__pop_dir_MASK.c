#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* ptr; size_t size; } ;
struct TYPE_14__ {scalar_t__ length; } ;
struct TYPE_12__ {int dir_root; scalar_t__ depth; TYPE_7__ dir; TYPE_4__ ign_path; } ;
typedef  TYPE_2__ git_ignores ;
struct TYPE_13__ {TYPE_1__* entry; } ;
typedef  TYPE_3__ git_attr_file ;
struct TYPE_11__ {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,size_t) ; 
 char* FUNC6 (char const*,char) ; 

int FUNC7(git_ignores *ign)
{
	if (ign->ign_path.length > 0) {
		git_attr_file *file = FUNC3(&ign->ign_path);
		const char *start = file->entry->path, *end;

		/* - ign->dir looks something like "/home/user/a/b/" (or "a/b/c/d/")
		 * - file->path looks something like "a/b/.gitignore
		 *
		 * We are popping the last directory off ign->dir.  We also want
		 * to remove the file from the vector if the popped directory
		 * matches the ignore path.  We need to test if the "a/b" part of
		 * the file key matches the path we are about to pop.
		 */

		if ((end = FUNC6(start, '/')) != NULL) {
			size_t dirlen = (end - start) + 1;
			const char *relpath = ign->dir.ptr + ign->dir_root;
			size_t pathlen = ign->dir.size - ign->dir_root;

			if (pathlen == dirlen && !FUNC5(relpath, start, dirlen)) {
				FUNC4(&ign->ign_path);
				FUNC0(file);
			}
		}
	}

	if (--ign->depth > 0) {
		FUNC1(&ign->dir, '/');
		FUNC2(&ign->dir);
	}

	return 0;
}