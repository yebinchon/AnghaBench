#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_4__ {void* platform_data; } ;
struct TYPE_5__ {int num_resources; TYPE_1__ dev; struct resource* resource; } ;

/* Variables and functions */
 TYPE_2__ davinci_gpio_device ; 
 int FUNC0 (TYPE_2__*) ; 

int FUNC1(struct resource *res, int size, void *pdata)
{
	davinci_gpio_device.resource = res;
	davinci_gpio_device.num_resources = size;
	davinci_gpio_device.dev.platform_data = pdata;
	return FUNC0(&davinci_gpio_device);
}