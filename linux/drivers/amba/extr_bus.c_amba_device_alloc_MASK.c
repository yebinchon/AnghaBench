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
struct TYPE_2__ {int /*<<< orphan*/  flags; void* end; void* start; } ;
struct amba_device {TYPE_1__ res; } ;
typedef  void* resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct amba_device*,char const*) ; 
 struct amba_device* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct amba_device *FUNC2(const char *name, resource_size_t base,
	size_t size)
{
	struct amba_device *dev;

	dev = FUNC1(sizeof(*dev), GFP_KERNEL);
	if (dev) {
		FUNC0(dev, name);
		dev->res.start = base;
		dev->res.end = base + size - 1;
		dev->res.flags = IORESOURCE_MEM;
	}

	return dev;
}