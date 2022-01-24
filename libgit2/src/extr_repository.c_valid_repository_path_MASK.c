#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_16__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_COMMONDIR_FILE ; 
 int /*<<< orphan*/  GIT_HEAD_FILE ; 
 int /*<<< orphan*/  GIT_OBJECTS_DIR ; 
 int /*<<< orphan*/  GIT_REFS_DIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(git_buf *repository_path, git_buf *common_path)
{
	/* Check if we have a separate commondir (e.g. we have a
	 * worktree) */
	if (FUNC9(repository_path, GIT_COMMONDIR_FILE)) {
		git_buf common_link  = GIT_BUF_INIT;
		FUNC1(&common_link, repository_path->ptr, GIT_COMMONDIR_FILE);

		FUNC7(&common_link, common_link.ptr);
		FUNC4(&common_link);

		if (FUNC10(common_link.ptr)) {
			FUNC1(common_path, repository_path->ptr, common_link.ptr);
		} else {
			FUNC6(common_path, &common_link);
		}

		FUNC0(&common_link);
	}
	else {
		FUNC5(common_path, repository_path->ptr, repository_path->size);
	}

	/* Make sure the commondir path always has a trailing * slash */
	if (FUNC3(common_path, '/') != (ssize_t)common_path->size - 1)
		FUNC2(common_path, '/');

	/* Ensure HEAD file exists */
	if (FUNC9(repository_path, GIT_HEAD_FILE) == false)
		return false;

	/* Check files in common dir */
	if (FUNC8(common_path, GIT_OBJECTS_DIR) == false)
		return false;
	if (FUNC8(common_path, GIT_REFS_DIR) == false)
		return false;

	return true;
}