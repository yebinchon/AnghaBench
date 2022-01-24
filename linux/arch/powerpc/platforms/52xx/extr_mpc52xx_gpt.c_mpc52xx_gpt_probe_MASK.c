#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mpc52xx_gpt_priv {TYPE_1__* dev; int /*<<< orphan*/  wdt_mode; int /*<<< orphan*/  list; int /*<<< orphan*/  regs; int /*<<< orphan*/  ipb_freq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPC52xx_GPT_CAN_WDT ; 
 int /*<<< orphan*/  MPC52xx_GPT_IS_WDT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct mpc52xx_gpt_priv*) ; 
 struct mpc52xx_gpt_priv* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mpc52xx_gpt_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc52xx_gpt_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpc52xx_gpt_list ; 
 int /*<<< orphan*/  mpc52xx_gpt_list_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct mpc52xx_gpt_priv*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *ofdev)
{
	struct mpc52xx_gpt_priv *gpt;

	gpt = FUNC2(&ofdev->dev, sizeof *gpt, GFP_KERNEL);
	if (!gpt)
		return -ENOMEM;

	FUNC12(&gpt->lock);
	gpt->dev = &ofdev->dev;
	gpt->ipb_freq = FUNC7(ofdev->dev.of_node);
	gpt->regs = FUNC11(ofdev->dev.of_node, 0);
	if (!gpt->regs)
		return -ENOMEM;

	FUNC1(&ofdev->dev, gpt);

	FUNC4(gpt, ofdev->dev.of_node);
	FUNC5(gpt, ofdev->dev.of_node);

	FUNC8(&mpc52xx_gpt_list_mutex);
	FUNC3(&gpt->list, &mpc52xx_gpt_list);
	FUNC9(&mpc52xx_gpt_list_mutex);

	/* check if this device could be a watchdog */
	if (FUNC10(ofdev->dev.of_node, "fsl,has-wdt", NULL) ||
	    FUNC10(ofdev->dev.of_node, "has-wdt", NULL)) {
		const u32 *on_boot_wdt;

		gpt->wdt_mode = MPC52xx_GPT_CAN_WDT;
		on_boot_wdt = FUNC10(ofdev->dev.of_node,
					      "fsl,wdt-on-boot", NULL);
		if (on_boot_wdt) {
			FUNC0(gpt->dev, "used as watchdog\n");
			gpt->wdt_mode |= MPC52xx_GPT_IS_WDT;
		} else
			FUNC0(gpt->dev, "can function as watchdog\n");
		FUNC6(gpt, on_boot_wdt);
	}

	return 0;
}