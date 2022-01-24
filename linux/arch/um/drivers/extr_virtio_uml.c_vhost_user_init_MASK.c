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
struct virtio_uml_device {int features; int protocol_features; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VHOST_USER_F_PROTOCOL_FEATURES ; 
 int /*<<< orphan*/  VHOST_USER_PROTOCOL_F_SLAVE_REQ ; 
 int VHOST_USER_SUPPORTED_PROTOCOL_F ; 
 int FUNC1 (struct virtio_uml_device*,int*) ; 
 int FUNC2 (struct virtio_uml_device*,int*) ; 
 int FUNC3 (struct virtio_uml_device*) ; 
 int FUNC4 (struct virtio_uml_device*) ; 
 int FUNC5 (struct virtio_uml_device*,int) ; 

__attribute__((used)) static int FUNC6(struct virtio_uml_device *vu_dev)
{
	int rc = FUNC4(vu_dev);

	if (rc)
		return rc;
	rc = FUNC1(vu_dev, &vu_dev->features);
	if (rc)
		return rc;

	if (vu_dev->features & FUNC0(VHOST_USER_F_PROTOCOL_FEATURES)) {
		rc = FUNC2(vu_dev,
				&vu_dev->protocol_features);
		if (rc)
			return rc;
		vu_dev->protocol_features &= VHOST_USER_SUPPORTED_PROTOCOL_F;
		rc = FUNC5(vu_dev,
				vu_dev->protocol_features);
		if (rc)
			return rc;
	}

	if (vu_dev->protocol_features &
			FUNC0(VHOST_USER_PROTOCOL_F_SLAVE_REQ)) {
		rc = FUNC3(vu_dev);
		if (rc)
			return rc;
	}

	return 0;
}