#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  filters; } ;
typedef  TYPE_1__ git_filter_list ;
struct TYPE_8__ {int /*<<< orphan*/  payload; TYPE_3__* filter; } ;
typedef  TYPE_2__ git_filter_entry ;
struct TYPE_9__ {int /*<<< orphan*/  (* cleanup ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC5(git_filter_list *fl)
{
	uint32_t i;

	if (!fl)
		return;

	for (i = 0; i < FUNC3(fl->filters); ++i) {
		git_filter_entry *fe = FUNC2(fl->filters, i);
		if (fe->filter->cleanup)
			fe->filter->cleanup(fe->filter, fe->payload);
	}

	FUNC1(fl->filters);
	FUNC0(fl);
}