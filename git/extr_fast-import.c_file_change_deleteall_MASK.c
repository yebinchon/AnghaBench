#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* versions; int /*<<< orphan*/  tree; } ;
struct branch {scalar_t__ num_notes; TYPE_2__ branch_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct branch *b)
{
	FUNC2(b->branch_tree.tree);
	FUNC1(&b->branch_tree.versions[0].oid);
	FUNC1(&b->branch_tree.versions[1].oid);
	FUNC0(&b->branch_tree);
	b->num_notes = 0;
}