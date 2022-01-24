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
struct pages_devres {unsigned long addr; unsigned int order; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  devm_pages_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct pages_devres*) ; 
 struct pages_devres* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 

unsigned long FUNC5(struct device *dev,
				  gfp_t gfp_mask, unsigned int order)
{
	struct pages_devres *devres;
	unsigned long addr;

	addr = FUNC0(gfp_mask, order);

	if (FUNC4(!addr))
		return 0;

	devres = FUNC2(devm_pages_release,
			      sizeof(struct pages_devres), GFP_KERNEL);
	if (FUNC4(!devres)) {
		FUNC3(addr, order);
		return 0;
	}

	devres->addr = addr;
	devres->order = order;

	FUNC1(dev, devres);
	return addr;
}