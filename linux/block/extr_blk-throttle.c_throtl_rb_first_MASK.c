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
struct throtl_service_queue {int /*<<< orphan*/  pending_tree; int /*<<< orphan*/  nr_pending; } ;
struct throtl_grp {int dummy; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct throtl_grp* FUNC1 (struct rb_node*) ; 
 struct rb_node* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct throtl_grp *
FUNC3(struct throtl_service_queue *parent_sq)
{
	struct rb_node *n;
	/* Service tree is empty */
	if (!parent_sq->nr_pending)
		return NULL;

	n = FUNC2(&parent_sq->pending_tree);
	FUNC0(!n);
	if (!n)
		return NULL;
	return FUNC1(n);
}