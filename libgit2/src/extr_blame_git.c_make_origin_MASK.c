#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_5__ {int refcnt; int /*<<< orphan*/  path; int /*<<< orphan*/ * blob; int /*<<< orphan*/ * commit; } ;
typedef  TYPE_1__ git_blame__origin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 TYPE_1__* FUNC2 (int,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(git_blame__origin **out, git_commit *commit, const char *path)
{
	git_blame__origin *o;
	git_object *blob;
	size_t path_len = FUNC5(path), alloc_len;
	int error = 0;

	if ((error = FUNC3(&blob, (git_object*)commit,
			path, GIT_OBJECT_BLOB)) < 0)
		return error;

	FUNC1(&alloc_len, sizeof(*o), path_len);
	FUNC1(&alloc_len, alloc_len, 1);
	o = FUNC2(1, alloc_len);
	FUNC0(o);

	o->commit = commit;
	o->blob = (git_blob *) blob;
	o->refcnt = 1;
	FUNC4(o->path, path);

	*out = o;

	return 0;
}