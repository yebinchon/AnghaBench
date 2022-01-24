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
struct TYPE_3__ {int /*<<< orphan*/ * fmh; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ git_map ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(git_map *map)
{
	int error = 0;

	FUNC2(map != NULL);

	if (map->data) {
		if (!FUNC1(map->data)) {
			FUNC3(GIT_ERROR_OS, "failed to munmap. Could not unmap view of file");
			error = -1;
		}
		map->data = NULL;
	}

	if (map->fmh) {
		if (!FUNC0(map->fmh)) {
			FUNC3(GIT_ERROR_OS, "failed to munmap. Could not close handle");
			error = -1;
		}
		map->fmh = NULL;
	}

	return error;
}