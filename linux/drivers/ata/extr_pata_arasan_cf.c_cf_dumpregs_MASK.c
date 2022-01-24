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
struct device {int dummy; } ;
struct arasan_cf_dev {scalar_t__ vbase; TYPE_1__* host; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ CFI_STS ; 
 scalar_t__ CLK_CFG ; 
 scalar_t__ GIRQ_SGN_EN ; 
 scalar_t__ GIRQ_STS ; 
 scalar_t__ GIRQ_STS_EN ; 
 scalar_t__ IRQ_EN ; 
 scalar_t__ IRQ_STS ; 
 scalar_t__ OP_MODE ; 
 scalar_t__ TM_CFG ; 
 scalar_t__ XFER_CTR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct arasan_cf_dev *acdev)
{
	struct device *dev = acdev->host->dev;

	FUNC0(dev, ": =========== REGISTER DUMP ===========");
	FUNC0(dev, ": CFI_STS: %x", FUNC1(acdev->vbase + CFI_STS));
	FUNC0(dev, ": IRQ_STS: %x", FUNC1(acdev->vbase + IRQ_STS));
	FUNC0(dev, ": IRQ_EN: %x", FUNC1(acdev->vbase + IRQ_EN));
	FUNC0(dev, ": OP_MODE: %x", FUNC1(acdev->vbase + OP_MODE));
	FUNC0(dev, ": CLK_CFG: %x", FUNC1(acdev->vbase + CLK_CFG));
	FUNC0(dev, ": TM_CFG: %x", FUNC1(acdev->vbase + TM_CFG));
	FUNC0(dev, ": XFER_CTR: %x", FUNC1(acdev->vbase + XFER_CTR));
	FUNC0(dev, ": GIRQ_STS: %x", FUNC1(acdev->vbase + GIRQ_STS));
	FUNC0(dev, ": GIRQ_STS_EN: %x", FUNC1(acdev->vbase + GIRQ_STS_EN));
	FUNC0(dev, ": GIRQ_SGN_EN: %x", FUNC1(acdev->vbase + GIRQ_SGN_EN));
	FUNC0(dev, ": =====================================");
}