#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {char const* path; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INDEX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 scalar_t__ FUNC3 (size_t*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,size_t) ; 

int FUNC5(git_index *index, const char *path, int stage)
{
	int error;
	size_t position;
	git_index_entry remove_key = { 0 };

	remove_key.path = path;
	FUNC1(&remove_key, stage);

	FUNC0(index, &remove_key);

	if (FUNC3(&position, index, path, 0, stage) < 0) {
		FUNC2(
			GIT_ERROR_INDEX, "index does not contain %s at stage %d", path, stage);
		error = GIT_ENOTFOUND;
	} else {
		error = FUNC4(index, position);
	}

	return error;
}