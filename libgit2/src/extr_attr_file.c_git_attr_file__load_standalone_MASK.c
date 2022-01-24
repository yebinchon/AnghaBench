#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ git_attr_file ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ATTR_FILE__FROM_FILE ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char const*) ; 

int FUNC6(git_attr_file **out, const char *path)
{
	git_buf content = GIT_BUF_INIT;
	git_attr_file *file = NULL;
	int error;

	if ((error = FUNC5(&content, path)) < 0)
		goto out;

	/*
	 * Because the cache entry is allocated from the file's own pool, we
	 * don't have to free it - freeing file+pool will free cache entry, too.
	 */

	if ((error = FUNC2(&file, NULL, GIT_ATTR_FILE__FROM_FILE)) < 0 ||
	    (error = FUNC3(NULL, file, content.ptr, true)) < 0 ||
	    (error = FUNC0(&file->entry, NULL, path, &file->pool)) < 0)
		goto out;

	*out = file;
out:
	if (error < 0)
		FUNC1(file);
	FUNC4(&content);

	return error;
}