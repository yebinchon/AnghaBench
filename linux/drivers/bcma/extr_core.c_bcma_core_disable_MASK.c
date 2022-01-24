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
 int /*<<< orphan*/  BCMA_RESET_CTL ; 
 int BCMA_RESET_CTL_RESET ; 
 int /*<<< orphan*/  BCMA_RESET_ST ; 
 int FUNC0 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct bcma_device *core, u32 flags)
{
	if (FUNC0(core, BCMA_RESET_CTL) & BCMA_RESET_CTL_RESET)
		return;

	FUNC2(core, BCMA_RESET_ST, ~0, 0, 300);

	FUNC1(core, BCMA_RESET_CTL, BCMA_RESET_CTL_RESET);
	FUNC0(core, BCMA_RESET_CTL);
	FUNC3(1);

	FUNC1(core, BCMA_IOCTL, flags);
	FUNC0(core, BCMA_IOCTL);
	FUNC3(10);
}