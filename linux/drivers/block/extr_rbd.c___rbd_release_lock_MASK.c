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
struct rbd_device {int /*<<< orphan*/  running_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*) ; 

__attribute__((used)) static void FUNC4(struct rbd_device *rbd_dev)
{
	FUNC1(FUNC0(&rbd_dev->running_list));

	FUNC2(rbd_dev);
	FUNC3(rbd_dev);
}