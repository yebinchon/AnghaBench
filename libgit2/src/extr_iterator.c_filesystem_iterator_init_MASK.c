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
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  repo; } ;
struct TYPE_5__ {TYPE_2__ base; int /*<<< orphan*/  ignores; } ;
typedef  TYPE_1__ filesystem_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_FIRST_ACCESS ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(filesystem_iterator *iter)
{
	int error;

	if (FUNC2(&iter->base) &&
		(error = FUNC1(iter->base.repo,
			".gitignore", &iter->ignores)) < 0)
		return error;

	if ((error = FUNC0(iter, NULL)) < 0)
		return error;

	iter->base.flags &= ~GIT_ITERATOR_FIRST_ACCESS;

	return 0;
}