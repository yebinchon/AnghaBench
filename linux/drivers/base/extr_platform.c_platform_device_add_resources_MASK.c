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
struct platform_device {unsigned int num_resources; struct resource* resource; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 struct resource* FUNC1 (struct resource const*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct platform_device *pdev,
				  const struct resource *res, unsigned int num)
{
	struct resource *r = NULL;

	if (res) {
		r = FUNC1(res, sizeof(struct resource) * num, GFP_KERNEL);
		if (!r)
			return -ENOMEM;
	}

	FUNC0(pdev->resource);
	pdev->resource = r;
	pdev->num_resources = num;
	return 0;
}