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
struct resource {int dummy; } ;
struct platform_device {int num_resources; struct resource* resource; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct resource*) ; 

struct resource *FUNC1(struct platform_device *dev,
				       unsigned int type, unsigned int num)
{
	int i;

	for (i = 0; i < dev->num_resources; i++) {
		struct resource *r = &dev->resource[i];

		if (type == FUNC0(r) && num-- == 0)
			return r;
	}
	return NULL;
}