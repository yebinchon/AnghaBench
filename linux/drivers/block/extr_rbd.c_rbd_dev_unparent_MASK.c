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
struct rbd_device {scalar_t__ parent_overlap; int /*<<< orphan*/ * parent_spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rbd_device *rbd_dev)
{
	FUNC0(rbd_dev);
	FUNC1(rbd_dev->parent_spec);
	rbd_dev->parent_spec = NULL;
	rbd_dev->parent_overlap = 0;
}