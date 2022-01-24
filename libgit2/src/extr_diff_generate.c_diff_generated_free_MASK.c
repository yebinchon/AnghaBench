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
struct TYPE_5__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  deltas; int /*<<< orphan*/  attrsession; } ;
struct TYPE_6__ {TYPE_1__ base; int /*<<< orphan*/  pathspec; } ;
typedef  TYPE_2__ git_diff_generated ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(git_diff *d)
{
	git_diff_generated *diff = (git_diff_generated *)d;

	FUNC2(&diff->base.attrsession);
	FUNC5(&diff->base.deltas);

	FUNC3(&diff->pathspec);
	FUNC4(&diff->base.pool);

	FUNC1(diff, sizeof(*diff));
	FUNC0(diff);
}