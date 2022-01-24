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
typedef  int u64 ;
struct virtio_uml_device {int features; } ;
struct virtio_device {int features; } ;

/* Variables and functions */
 int VHOST_USER_SUPPORTED_F ; 
 struct virtio_uml_device* FUNC0 (struct virtio_device*) ; 
 int FUNC1 (struct virtio_uml_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 

__attribute__((used)) static int FUNC3(struct virtio_device *vdev)
{
	struct virtio_uml_device *vu_dev = FUNC0(vdev);
	u64 supported = vdev->features & VHOST_USER_SUPPORTED_F;

	FUNC2(vdev);
	vu_dev->features = vdev->features | supported;

	return FUNC1(vu_dev, vu_dev->features);
}