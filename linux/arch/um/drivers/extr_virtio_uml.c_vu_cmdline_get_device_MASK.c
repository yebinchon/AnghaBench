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
struct virtio_uml_platform_data {char* socket_path; int virtio_device_id; } ;
struct TYPE_2__ {struct virtio_uml_platform_data* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,char*,char*,int,int) ; 
 unsigned int FUNC1 (char*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct platform_device *pdev = FUNC2(dev);
	struct virtio_uml_platform_data *pdata = pdev->dev.platform_data;
	char *buffer = data;
	unsigned int len = FUNC1(buffer);

	FUNC0(buffer + len, PAGE_SIZE - len, "%s:%d:%d\n",
		 pdata->socket_path, pdata->virtio_device_id, pdev->id);
	return 0;
}