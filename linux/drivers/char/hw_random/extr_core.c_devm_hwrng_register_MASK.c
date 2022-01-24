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
struct hwrng {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_hwrng_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct hwrng**) ; 
 struct hwrng** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hwrng**) ; 
 int FUNC3 (struct hwrng*) ; 

int FUNC4(struct device *dev, struct hwrng *rng)
{
	struct hwrng **ptr;
	int error;

	ptr = FUNC1(devm_hwrng_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	error = FUNC3(rng);
	if (error) {
		FUNC2(ptr);
		return error;
	}

	*ptr = rng;
	FUNC0(dev, ptr);
	return 0;
}