#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct bfq_service_tree {int /*<<< orphan*/  vtime; int /*<<< orphan*/  active; } ;
struct bfq_entity {int /*<<< orphan*/  min_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bfq_entity* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC2(struct bfq_service_tree *st)
{
	struct bfq_entity *root_entity = FUNC1(&st->active);

	if (FUNC0(root_entity->min_start, st->vtime))
		return root_entity->min_start;

	return st->vtime;
}