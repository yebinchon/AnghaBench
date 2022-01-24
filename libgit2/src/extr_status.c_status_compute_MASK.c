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
typedef  int /*<<< orphan*/  git_status_t ;
struct TYPE_3__ {int /*<<< orphan*/  idx2wd; } ;
typedef  TYPE_1__ git_status_list ;
typedef  int /*<<< orphan*/  git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STATUS_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static git_status_t FUNC2(
	git_status_list *status,
	git_diff_delta *head2idx,
	git_diff_delta *idx2wd)
{
	git_status_t st = GIT_STATUS_CURRENT;

	if (head2idx)
		st |= FUNC0(head2idx);

	if (idx2wd)
		st |= FUNC1(status->idx2wd, idx2wd);

	return st;
}