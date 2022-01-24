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
struct TYPE_5__ {int /*<<< orphan*/  iterator_time; int /*<<< orphan*/  commit_pool; int /*<<< orphan*/  commits; int /*<<< orphan*/  odb; } ;
typedef  TYPE_1__ git_revwalk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(git_revwalk *walk)
{
	if (walk == NULL)
		return;

	FUNC5(walk);
	FUNC1(walk->odb);

	FUNC2(walk->commits);
	FUNC3(&walk->commit_pool);
	FUNC4(&walk->iterator_time);
	FUNC0(walk);
}