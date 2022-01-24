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
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_regexp ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(git_object **out, git_revwalk *walk, git_regexp *regex)
{
	int error;
	git_oid oid;
	git_object *obj;

	while (!(error = FUNC4(&oid, walk))) {

		error = FUNC2(&obj, FUNC5(walk), &oid, GIT_OBJECT_COMMIT);
		if ((error < 0) && (error != GIT_ENOTFOUND))
			return -1;

		if (!FUNC3(regex, FUNC0((git_commit*)obj))) {
			*out = obj;
			return 0;
		}

		FUNC1(obj);
	}

	if (error < 0 && error == GIT_ITEROVER)
		error = GIT_ENOTFOUND;

	return error;
}