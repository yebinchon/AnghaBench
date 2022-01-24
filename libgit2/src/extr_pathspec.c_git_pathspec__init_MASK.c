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
typedef  int /*<<< orphan*/  git_strarray ;
struct TYPE_5__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  pathspec; int /*<<< orphan*/  prefix; } ;
typedef  TYPE_1__ git_pathspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(git_pathspec *ps, const git_strarray *paths)
{
	int error = 0;

	FUNC4(ps, 0, sizeof(*ps));

	ps->prefix = FUNC2(paths);
	FUNC3(&ps->pool, 1);

	if ((error = FUNC1(&ps->pathspec, paths, &ps->pool)) < 0)
		FUNC0(ps);

	return error;
}