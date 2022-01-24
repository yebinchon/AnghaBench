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
struct rbd_device {struct rbd_device* parent_spec; scalar_t__ parent_overlap; struct rbd_device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*) ; 

__attribute__((used)) static void FUNC4(struct rbd_device *rbd_dev)
{
	while (rbd_dev->parent) {
		struct rbd_device *first = rbd_dev;
		struct rbd_device *second = first->parent;
		struct rbd_device *third;

		/*
		 * Follow to the parent with no grandparent and
		 * remove it.
		 */
		while (second && (third = second->parent)) {
			first = second;
			second = third;
		}
		FUNC0(second);
		FUNC2(second);
		FUNC1(second);
		first->parent = NULL;
		first->parent_overlap = 0;

		FUNC0(first->parent_spec);
		FUNC3(first->parent_spec);
		first->parent_spec = NULL;
	}
}