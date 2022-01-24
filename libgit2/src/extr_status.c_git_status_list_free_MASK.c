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
struct TYPE_5__ {int /*<<< orphan*/  paired; int /*<<< orphan*/  idx2wd; int /*<<< orphan*/  head2idx; } ;
typedef  TYPE_1__ git_status_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(git_status_list *status)
{
	if (status == NULL)
		return;

	FUNC2(status->head2idx);
	FUNC2(status->idx2wd);

	FUNC3(&status->paired);

	FUNC1(status, sizeof(*status));
	FUNC0(status);
}