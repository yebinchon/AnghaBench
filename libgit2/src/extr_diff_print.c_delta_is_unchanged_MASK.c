#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mode; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {scalar_t__ mode; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {TYPE_1__ new_file; TYPE_2__ old_file; } ;
typedef  TYPE_3__ git_diff_delta ;

/* Variables and functions */
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(const git_diff_delta *delta)
{
	if (FUNC1(&delta->old_file.id) &&
		FUNC1(&delta->new_file.id))
		return true;

	if (delta->old_file.mode == GIT_FILEMODE_COMMIT ||
		delta->new_file.mode == GIT_FILEMODE_COMMIT)
		return false;

	if (FUNC0(&delta->old_file.id, &delta->new_file.id))
		return true;

	return false;
}