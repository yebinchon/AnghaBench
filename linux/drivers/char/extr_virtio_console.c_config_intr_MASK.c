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
struct virtio_device {struct ports_device* priv; } ;
struct ports_device {int /*<<< orphan*/  config_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ports_device*) ; 

__attribute__((used)) static void FUNC2(struct virtio_device *vdev)
{
	struct ports_device *portdev;

	portdev = vdev->priv;

	if (!FUNC1(portdev))
		FUNC0(&portdev->config_work);
}