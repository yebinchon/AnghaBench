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
typedef  int /*<<< orphan*/  u32 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct ipmi_smi_powernv {scalar_t__ irq; struct ipmi_smi_powernv* opal_msg; int /*<<< orphan*/  interface_id; int /*<<< orphan*/  msg_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPMI_MAX_MSG_LENGTH ; 
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ipmi_smi_powernv*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct ipmi_smi_powernv*) ; 
 struct ipmi_smi_powernv* FUNC4 (struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ipmi_smi_powernv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct ipmi_smi_powernv*) ; 
 int /*<<< orphan*/  ipmi_opal_event ; 
 int /*<<< orphan*/  ipmi_powernv_smi_handlers ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ipmi_smi_powernv*,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ipmi_smi_powernv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct ipmi_smi_powernv *ipmi;
	struct device *dev;
	u32 prop;
	int rc;

	if (!pdev || !pdev->dev.of_node)
		return -ENODEV;

	dev = &pdev->dev;

	ipmi = FUNC5(dev, sizeof(*ipmi), GFP_KERNEL);
	if (!ipmi)
		return -ENOMEM;

	FUNC13(&ipmi->msg_lock);

	rc = FUNC10(dev->of_node, "ibm,ipmi-interface-id",
			&prop);
	if (rc) {
		FUNC2(dev, "No interface ID property\n");
		goto err_free;
	}
	ipmi->interface_id = prop;

	rc = FUNC10(dev->of_node, "interrupts", &prop);
	if (rc) {
		FUNC2(dev, "No interrupts property\n");
		goto err_free;
	}

	ipmi->irq = FUNC9(dev->of_node, 0);
	if (!ipmi->irq) {
		FUNC0(dev, "Unable to map irq from device tree\n");
		ipmi->irq = FUNC11(prop);
	}

	rc = FUNC12(ipmi->irq, ipmi_opal_event, IRQ_TYPE_LEVEL_HIGH,
			 "opal-ipmi", ipmi);
	if (rc) {
		FUNC2(dev, "Unable to request irq\n");
		goto err_dispose;
	}

	ipmi->opal_msg = FUNC4(dev,
			sizeof(*ipmi->opal_msg) + IPMI_MAX_MSG_LENGTH,
			GFP_KERNEL);
	if (!ipmi->opal_msg) {
		rc = -ENOMEM;
		goto err_unregister;
	}

	rc = FUNC7(&ipmi_powernv_smi_handlers, ipmi, dev, 0);
	if (rc) {
		FUNC2(dev, "IPMI SMI registration failed (%d)\n", rc);
		goto err_free_msg;
	}

	FUNC1(dev, ipmi);
	return 0;

err_free_msg:
	FUNC3(dev, ipmi->opal_msg);
err_unregister:
	FUNC6(ipmi->irq, ipmi);
err_dispose:
	FUNC8(ipmi->irq);
err_free:
	FUNC3(dev, ipmi);
	return rc;
}