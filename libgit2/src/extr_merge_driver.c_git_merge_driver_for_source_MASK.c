#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  default_driver; int /*<<< orphan*/  repo; TYPE_3__* theirs; TYPE_2__* ours; TYPE_1__* ancestor; } ;
typedef  TYPE_4__ git_merge_driver_source ;
typedef  int /*<<< orphan*/  git_merge_driver ;
struct TYPE_8__ {int /*<<< orphan*/ * path; } ;
struct TYPE_7__ {int /*<<< orphan*/ * path; } ;
struct TYPE_6__ {int /*<<< orphan*/ * path; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int FUNC2 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(
	const char **name_out,
	git_merge_driver **driver_out,
	const git_merge_driver_source *src)
{
	const char *path, *driver_name;
	int error = 0;

	path = FUNC0(
		src->ancestor ? src->ancestor->path : NULL,
		src->ours ? src->ours->path : NULL,
		src->theirs ? src->theirs->path : NULL);

	if ((error = FUNC2(
			&driver_name, src->repo, path, src->default_driver)) < 0)
		return error;

	*name_out = driver_name;
	*driver_out = FUNC1(driver_name);
	return error;
}