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
typedef  int /*<<< orphan*/  u64 ;
struct virtio_uml_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VHOST_USER_GET_FEATURES ; 
 int FUNC0 (struct virtio_uml_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct virtio_uml_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct virtio_uml_device *vu_dev,
				   u64 *features)
{
	int rc = FUNC1(vu_dev, true,
					    VHOST_USER_GET_FEATURES);

	if (rc)
		return rc;
	return FUNC0(vu_dev, features);
}