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
struct device {int dummy; } ;
struct counter_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct counter_device* const) ; 
 int /*<<< orphan*/  devm_counter_unreg ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct counter_device**) ; 
 struct counter_device** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct counter_device**) ; 

int FUNC4(struct device *dev,
			  struct counter_device *const counter)
{
	struct counter_device **ptr;
	int ret;

	ptr = FUNC2(devm_counter_unreg, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC0(counter);
	if (!ret) {
		*ptr = counter;
		FUNC1(dev, ptr);
	} else {
		FUNC3(ptr);
	}

	return ret;
}