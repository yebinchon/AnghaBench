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
struct TYPE_2__ {void* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(struct platform_device *pdev, const void *data,
			     size_t size)
{
	void *d = NULL;

	if (data) {
		d = FUNC1(data, size, GFP_KERNEL);
		if (!d)
			return -ENOMEM;
	}

	FUNC0(pdev->dev.platform_data);
	pdev->dev.platform_data = d;
	return 0;
}