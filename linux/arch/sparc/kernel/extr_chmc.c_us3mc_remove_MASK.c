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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ MC_TYPE_JBUS ; 
 scalar_t__ MC_TYPE_SAFARI ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,void*) ; 
 scalar_t__ mc_type ; 

__attribute__((used)) static int FUNC3(struct platform_device *op)
{
	void *p = FUNC1(&op->dev);

	if (p) {
		if (mc_type == MC_TYPE_SAFARI)
			FUNC0(op, p);
		else if (mc_type == MC_TYPE_JBUS)
			FUNC2(op, p);
	}
	return 0;
}