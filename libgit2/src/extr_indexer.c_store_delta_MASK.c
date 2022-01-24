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
struct delta_info {int /*<<< orphan*/  delta_off; } ;
struct TYPE_3__ {int /*<<< orphan*/  deltas; int /*<<< orphan*/  entry_start; } ;
typedef  TYPE_1__ git_indexer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delta_info*) ; 
 struct delta_info* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct delta_info*) ; 

__attribute__((used)) static int FUNC3(git_indexer *idx)
{
	struct delta_info *delta;

	delta = FUNC1(1, sizeof(struct delta_info));
	FUNC0(delta);
	delta->delta_off = idx->entry_start;

	if (FUNC2(&idx->deltas, delta) < 0)
		return -1;

	return 0;
}