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
typedef  int /*<<< orphan*/  u8 ;
struct virtio_uml_device {int /*<<< orphan*/  status; } ;
struct virtio_device {int dummy; } ;

/* Variables and functions */
 struct virtio_uml_device* FUNC0 (struct virtio_device*) ; 

__attribute__((used)) static void FUNC1(struct virtio_device *vdev, u8 status)
{
	struct virtio_uml_device *vu_dev = FUNC0(vdev);

	vu_dev->status = status;
}