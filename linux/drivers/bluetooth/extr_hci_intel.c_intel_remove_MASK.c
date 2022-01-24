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
struct intel_device {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_device_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct intel_device* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct intel_device *idev = FUNC5(pdev);

	FUNC1(&pdev->dev);

	FUNC3(&intel_device_list_lock);
	FUNC2(&idev->list);
	FUNC4(&intel_device_list_lock);

	FUNC0(&pdev->dev, "unregistered.\n");

	return 0;
}