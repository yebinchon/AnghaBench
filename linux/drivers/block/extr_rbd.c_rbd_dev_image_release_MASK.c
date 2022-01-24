#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rbd_device {TYPE_1__* spec; scalar_t__ image_format; scalar_t__ opts; } ;
struct TYPE_2__ {int /*<<< orphan*/ * image_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev)
{
	FUNC1(rbd_dev);
	if (rbd_dev->opts)
		FUNC2(rbd_dev);
	rbd_dev->image_format = 0;
	FUNC0(rbd_dev->spec->image_id);
	rbd_dev->spec->image_id = NULL;
}