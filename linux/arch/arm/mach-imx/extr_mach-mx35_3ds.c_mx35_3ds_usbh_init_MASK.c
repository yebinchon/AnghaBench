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
struct platform_device {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int MXC_EHCI_INTERFACE_SINGLE_UNI ; 
 int MXC_EHCI_INTERNAL_PHY ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	return FUNC0(pdev->id, MXC_EHCI_INTERFACE_SINGLE_UNI |
			  MXC_EHCI_INTERNAL_PHY);
}