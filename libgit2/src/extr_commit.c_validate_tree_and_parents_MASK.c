#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/ * (* git_commit_parent_callback ) (size_t,void*) ;
struct TYPE_6__ {scalar_t__ size; } ;
typedef  TYPE_1__ git_array_oid_t ;

/* Variables and functions */
 int GIT_EMODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC8(git_array_oid_t *parents, git_repository *repo, const git_oid *tree,
	git_commit_parent_callback parent_cb, void *parent_payload,
	const git_oid *current_id, bool validate)
{
	size_t i;
	int error;
	git_oid *parent_cpy;
	const git_oid *parent;

	if (validate && !FUNC5(repo, tree, GIT_OBJECT_TREE))
		return -1;

	i = 0;
	while ((parent = parent_cb(i, parent_payload)) != NULL) {
		if (validate && !FUNC5(repo, parent, GIT_OBJECT_COMMIT)) {
			error = -1;
			goto on_error;
		}

		parent_cpy = FUNC1(*parents);
		FUNC0(parent_cpy);

		FUNC7(parent_cpy, parent);
		i++;
	}

	if (current_id && (parents->size == 0 || FUNC6(current_id, FUNC3(*parents, 0)))) {
		FUNC4(GIT_ERROR_OBJECT, "failed to create commit: current tip is not the first parent");
		error = GIT_EMODIFIED;
		goto on_error;
	}

	return 0;

on_error:
	FUNC2(*parents);
	return error;
}