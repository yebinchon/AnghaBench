#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {TYPE_1__* parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  str; int /*<<< orphan*/  odr; int /*<<< orphan*/  idr; } ;
struct kcs_bmc {TYPE_2__ ioreg; int /*<<< orphan*/  miscdev; int /*<<< orphan*/  io_outputb; int /*<<< orphan*/  io_inputb; } ;
struct aspeed_kcs_bmc {int /*<<< orphan*/  map; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int KCS_CHANNEL_MAX ; 
 int FUNC1 (struct kcs_bmc*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct kcs_bmc*,int) ; 
 int /*<<< orphan*/  aspeed_kcs_inb ; 
 int /*<<< orphan*/  aspeed_kcs_outb ; 
 int /*<<< orphan*/  FUNC3 (struct kcs_bmc*,int) ; 
 TYPE_2__* ast_kcs_bmc_ioregs ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct kcs_bmc*) ; 
 struct kcs_bmc* FUNC6 (struct device*,int,int) ; 
 struct aspeed_kcs_bmc* FUNC7 (struct kcs_bmc*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct aspeed_kcs_bmc *priv;
	struct kcs_bmc *kcs_bmc;
	u32 chan, addr;
	int rc;

	rc = FUNC9(dev->of_node, "kcs_chan", &chan);
	if ((rc != 0) || (chan == 0 || chan > KCS_CHANNEL_MAX)) {
		FUNC4(dev, "no valid 'kcs_chan' configured\n");
		return -ENODEV;
	}

	rc = FUNC9(dev->of_node, "kcs_addr", &addr);
	if (rc) {
		FUNC4(dev, "no valid 'kcs_addr' configured\n");
		return -ENODEV;
	}

	kcs_bmc = FUNC6(dev, sizeof(*priv), chan);
	if (!kcs_bmc)
		return -ENOMEM;

	priv = FUNC7(kcs_bmc);
	priv->map = FUNC11(dev->parent->of_node);
	if (FUNC0(priv->map)) {
		FUNC4(dev, "Couldn't get regmap\n");
		return -ENODEV;
	}

	kcs_bmc->ioreg = ast_kcs_bmc_ioregs[chan - 1];
	kcs_bmc->io_inputb = aspeed_kcs_inb;
	kcs_bmc->io_outputb = aspeed_kcs_outb;

	FUNC5(dev, kcs_bmc);

	FUNC3(kcs_bmc, addr);
	FUNC2(kcs_bmc, true);
	rc = FUNC1(kcs_bmc, pdev);
	if (rc)
		return rc;

	rc = FUNC8(&kcs_bmc->miscdev);
	if (rc) {
		FUNC4(dev, "Unable to register device\n");
		return rc;
	}

	FUNC10("channel=%u addr=0x%x idr=0x%x odr=0x%x str=0x%x\n",
		chan, addr,
		kcs_bmc->ioreg.idr, kcs_bmc->ioreg.odr, kcs_bmc->ioreg.str);

	return 0;
}