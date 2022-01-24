#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;
struct xilly_endpoint {int num_channels; int major; int lowest_minor; TYPE_2__ cdev; int /*<<< orphan*/  dev; TYPE_1__* ephw; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  devname ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 struct device* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  xillybus_class ; 
 int /*<<< orphan*/  xillybus_fops ; 
 int /*<<< orphan*/  xillyname ; 

__attribute__((used)) static int FUNC14(struct xilly_endpoint *endpoint,
				const unsigned char *idt)
{
	int rc;
	dev_t dev;
	int devnum, i, minor, major;
	char devname[48];
	struct device *device;

	rc = FUNC4(&dev, 0, /* minor start */
				 endpoint->num_channels,
				 xillyname);
	if (rc) {
		FUNC9(endpoint->dev, "Failed to obtain major/minors");
		return rc;
	}

	endpoint->major = major = FUNC1(dev);
	endpoint->lowest_minor = minor = FUNC2(dev);

	FUNC7(&endpoint->cdev, &xillybus_fops);
	endpoint->cdev.owner = endpoint->ephw->owner;
	rc = FUNC5(&endpoint->cdev, FUNC3(major, minor),
		      endpoint->num_channels);
	if (rc) {
		FUNC9(endpoint->dev, "Failed to add cdev. Aborting.\n");
		goto unregister_chrdev;
	}

	idt++;

	for (i = minor, devnum = 0;
	     devnum < endpoint->num_channels;
	     devnum++, i++) {
		FUNC12(devname, sizeof(devname)-1, "xillybus_%s", idt);

		devname[sizeof(devname)-1] = 0; /* Should never matter */

		while (*idt++)
			/* Skip to next */;

		device = FUNC10(xillybus_class,
				       NULL,
				       FUNC3(major, i),
				       NULL,
				       "%s", devname);

		if (FUNC0(device)) {
			FUNC9(endpoint->dev,
				 "Failed to create %s device. Aborting.\n",
				 devname);
			rc = -ENODEV;
			goto unroll_device_create;
		}
	}

	FUNC8(endpoint->dev, "Created %d device files.\n",
		 endpoint->num_channels);
	return 0; /* succeed */

unroll_device_create:
	devnum--; i--;
	for (; devnum >= 0; devnum--, i--)
		FUNC11(xillybus_class, FUNC3(major, i));

	FUNC6(&endpoint->cdev);
unregister_chrdev:
	FUNC13(FUNC3(major, minor), endpoint->num_channels);

	return rc;
}