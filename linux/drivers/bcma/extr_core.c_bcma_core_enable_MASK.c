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
typedef  int u32 ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int BCMA_IOCTL_CLK ; 
 int BCMA_IOCTL_FGC ; 
 int /*<<< orphan*/  BCMA_RESET_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct bcma_device *core, u32 flags)
{
	FUNC2(core, flags);

	FUNC1(core, BCMA_IOCTL, (BCMA_IOCTL_CLK | BCMA_IOCTL_FGC | flags));
	FUNC0(core, BCMA_IOCTL);

	FUNC1(core, BCMA_RESET_CTL, 0);
	FUNC0(core, BCMA_RESET_CTL);
	FUNC3(1);

	FUNC1(core, BCMA_IOCTL, (BCMA_IOCTL_CLK | flags));
	FUNC0(core, BCMA_IOCTL);
	FUNC3(1);

	return 0;
}