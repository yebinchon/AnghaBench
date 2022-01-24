#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; int /*<<< orphan*/  entry_path; int /*<<< orphan*/  entry_pool; TYPE_4__ frames; } ;
typedef  TYPE_1__ tree_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(tree_iterator *iter)
{
	while (iter->frames.size)
		FUNC4(iter);

	FUNC0(iter->frames);

	FUNC2(&iter->entry_pool);
	FUNC1(&iter->entry_path);

	FUNC3(&iter->base);
}