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
struct platform_device {int dummy; } ;
struct locomo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct locomo*) ; 
 struct locomo* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct locomo *lchip = FUNC1(dev);

	if (lchip) {
		FUNC0(lchip);
		FUNC2(dev, NULL);
	}

	return 0;
}