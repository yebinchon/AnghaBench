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
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; int /*<<< orphan*/  tmp_buf; int /*<<< orphan*/  ignores; TYPE_2__ frames; } ;
typedef  TYPE_1__ filesystem_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(filesystem_iterator *iter)
{
	while (iter->frames.size)
		FUNC0(iter);

	FUNC1(iter->frames);
	FUNC3(&iter->ignores);

	FUNC2(&iter->tmp_buf);

	FUNC4(&iter->base);
}