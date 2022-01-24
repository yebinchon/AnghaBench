#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct skd_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIT_CONTROL ; 
 int /*<<< orphan*/  FIT_CR_ENABLE_INTERRUPTS ; 
 int /*<<< orphan*/  FIT_INT_MASK_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct skd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skd_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct skd_device *skdev)
{
	u32 sense;

	sense = FUNC0(skdev, FIT_CONTROL);
	sense &= ~FIT_CR_ENABLE_INTERRUPTS;
	FUNC1(skdev, sense, FIT_CONTROL);
	FUNC2(&skdev->pdev->dev, "sense 0x%x\n", sense);

	/* Note that the 1s is written. A 1-bit means
	 * disable, a 0 means enable.
	 */
	FUNC1(skdev, ~0, FIT_INT_MASK_HOST);
}