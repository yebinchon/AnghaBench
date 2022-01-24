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
struct TYPE_6__ {size_t length; int /*<<< orphan*/ * contents; } ;
struct TYPE_5__ {int dirty; TYPE_2__ reuc; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(git_index *index)
{
	size_t i;

	FUNC0(index);

	for (i = 0; i < index->reuc.length; ++i)
		FUNC3(FUNC1(index->reuc.contents[i], NULL));

	FUNC2(&index->reuc);

	index->dirty = 1;
}