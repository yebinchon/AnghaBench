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
struct rbd_device {int /*<<< orphan*/  header_rwsem; int /*<<< orphan*/  parent_ref; scalar_t__ parent_overlap; int /*<<< orphan*/  parent_spec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct rbd_device *rbd_dev)
{
	int counter = 0;

	if (!rbd_dev->parent_spec)
		return false;

	FUNC1(&rbd_dev->header_rwsem);
	if (rbd_dev->parent_overlap)
		counter = FUNC0(&rbd_dev->parent_ref);
	FUNC3(&rbd_dev->header_rwsem);

	if (counter < 0)
		FUNC2(rbd_dev, "parent reference overflow");

	return counter > 0;
}