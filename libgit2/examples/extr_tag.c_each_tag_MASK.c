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
struct TYPE_5__ {int /*<<< orphan*/ * repo; } ;
typedef  TYPE_1__ tag_state ;
typedef  int /*<<< orphan*/  git_tag ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
#define  GIT_OBJECT_COMMIT 129 
#define  GIT_OBJECT_TAG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(const char *name, tag_state *state)
{
	git_repository *repo = state->repo;
	git_object *obj;

	FUNC0(FUNC3(&obj, repo, name),
			"Failed to lookup rev", name);

	switch (FUNC2(obj)) {
		case GIT_OBJECT_TAG:
			FUNC6((git_tag *) obj, state);
			break;
		case GIT_OBJECT_COMMIT:
			FUNC4((git_commit *) obj, name, state);
			break;
		default:
			FUNC5(name);
	}

	FUNC1(obj);
	return 0;
}