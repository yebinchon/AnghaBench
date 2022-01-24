#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_generated ;
struct TYPE_4__ {int /*<<< orphan*/  new_iter; int /*<<< orphan*/  nitem; int /*<<< orphan*/  old_iter; int /*<<< orphan*/  oitem; } ;
typedef  TYPE_1__ diff_in_progress ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(
	git_diff_generated *diff, diff_in_progress *info)
{
	int error = 0;

	if ((error = FUNC1(diff, info)) < 0)
		return error;

	if (!(error = FUNC0(&info->oitem, info->old_iter)))
		error = FUNC0(&info->nitem, info->new_iter);

	return error;
}