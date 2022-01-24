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
struct ace_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ace_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,struct device*) ; 
 struct ace_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ace_device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct ace_device *ace = FUNC2(dev);
	FUNC1(dev, "ace_free(%p)\n", dev);

	if (ace) {
		FUNC0(ace);
		FUNC3(dev, NULL);
		FUNC4(ace);
	}
}