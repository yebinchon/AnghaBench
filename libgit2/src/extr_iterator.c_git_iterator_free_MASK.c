#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* end; struct TYPE_8__* start; int /*<<< orphan*/  pathlist; TYPE_1__* cb; } ;
typedef  TYPE_2__ git_iterator ;
struct TYPE_7__ {int /*<<< orphan*/  (* free ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(git_iterator *iter)
{
	if (iter == NULL)
		return;

	iter->cb->free(iter);

	FUNC1(&iter->pathlist);
	FUNC0(iter->start);
	FUNC0(iter->end);

	FUNC2(iter, 0, sizeof(*iter));

	FUNC0(iter);
}