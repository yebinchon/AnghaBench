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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct vio_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 void const* FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 

const void *FUNC1(struct vio_dev *vdev, char *which, int *length)
{
	return FUNC0(vdev->dev.of_node, which, length);
}