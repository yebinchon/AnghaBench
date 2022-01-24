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
struct throtl_service_queue {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  pending_tree; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rb_node *n,
			    struct throtl_service_queue *parent_sq)
{
	FUNC1(n, &parent_sq->pending_tree);
	FUNC0(n);
	--parent_sq->nr_pending;
}