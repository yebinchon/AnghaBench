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
struct rbd_device {int /*<<< orphan*/  name; int /*<<< orphan*/  major; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RBD_DEV_FLAG_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*) ; 
 int /*<<< orphan*/  single_major ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev)
{
	FUNC0(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags);
	FUNC1(rbd_dev);
	if (!single_major)
		FUNC2(rbd_dev->major, rbd_dev->name);
}