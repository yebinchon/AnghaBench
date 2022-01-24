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
struct rbd_device {int /*<<< orphan*/  parent_ref; int /*<<< orphan*/  parent_spec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*,char*) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev)
{
	int counter;

	if (!rbd_dev->parent_spec)
		return;

	counter = FUNC0(&rbd_dev->parent_ref);
	if (counter > 0)
		return;

	/* Last reference; clean up parent data structures */

	if (!counter)
		FUNC1(rbd_dev);
	else
		FUNC2(rbd_dev, "parent reference underflow");
}