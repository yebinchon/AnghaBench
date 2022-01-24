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
struct platform_device {int id; } ;

/* Variables and functions */
 int ALCHEMY_USB_OHCI0 ; 
 int ALCHEMY_USB_OHCI1 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct platform_device *pdev)
{
	int unit;

	unit = (pdev->id == 1) ?
		ALCHEMY_USB_OHCI1 : ALCHEMY_USB_OHCI0;

	FUNC0(unit, 0);
}