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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ep93xx_ohci_host_clock ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	if (!ep93xx_ohci_host_clock) {
		ep93xx_ohci_host_clock = FUNC3(&pdev->dev, NULL);
		if (FUNC0(ep93xx_ohci_host_clock))
			return FUNC1(ep93xx_ohci_host_clock);
	}

	return FUNC2(ep93xx_ohci_host_clock);
}