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
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdev_match_name ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

void FUNC4(char *name)
{
	struct device *dev;

	while ((dev = FUNC0(&platform_bus_type, NULL, name,
				      pdev_match_name))) {
		struct platform_device *pdev = FUNC3(dev);

		FUNC1(pdev);
		FUNC2(dev);
	}
}