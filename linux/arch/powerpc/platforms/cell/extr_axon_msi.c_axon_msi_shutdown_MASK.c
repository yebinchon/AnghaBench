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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct axon_msic {int /*<<< orphan*/  dcr_host; int /*<<< orphan*/  irq_domain; } ;

/* Variables and functions */
 int MSIC_CTRL_ENABLE ; 
 int MSIC_CTRL_IRQ_ENABLE ; 
 int /*<<< orphan*/  MSIC_CTRL_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axon_msic* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct axon_msic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct platform_device *device)
{
	struct axon_msic *msic = FUNC1(&device->dev);
	u32 tmp;

	FUNC4("axon_msi: disabling %pOF\n",
		 FUNC2(msic->irq_domain));
	tmp  = FUNC0(msic->dcr_host, MSIC_CTRL_REG);
	tmp &= ~MSIC_CTRL_ENABLE & ~MSIC_CTRL_IRQ_ENABLE;
	FUNC3(msic, MSIC_CTRL_REG, tmp);
}