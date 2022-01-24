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
struct arasan_cf_pdata {unsigned int cf_if_clk; } ;
struct arasan_cf_dev {TYPE_1__* host; scalar_t__ vbase; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_DETECT_IRQ ; 
 unsigned int CFHOST_ENB ; 
 unsigned int CF_IF_CLK_166M ; 
 unsigned int CF_IF_CLK_200M ; 
 scalar_t__ CLK_CFG ; 
 scalar_t__ OP_MODE ; 
 unsigned int TRUE_IDE_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct arasan_cf_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct arasan_cf_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct arasan_cf_pdata* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct arasan_cf_dev *acdev)
{
	struct arasan_cf_pdata *pdata = FUNC6(acdev->host->dev);
	unsigned int if_clk;
	unsigned long flags;
	int ret = 0;

	ret = FUNC3(acdev->clk);
	if (ret) {
		FUNC5(acdev->host->dev, "clock enable failed");
		return ret;
	}

	ret = FUNC4(acdev->clk, 166000000);
	if (ret) {
		FUNC7(acdev->host->dev, "clock set rate failed");
		FUNC2(acdev->clk);
		return ret;
	}

	FUNC8(&acdev->host->lock, flags);
	/* configure CF interface clock */
	/* TODO: read from device tree */
	if_clk = CF_IF_CLK_166M;
	if (pdata && pdata->cf_if_clk <= CF_IF_CLK_200M)
		if_clk = pdata->cf_if_clk;

	FUNC10(if_clk, acdev->vbase + CLK_CFG);

	FUNC10(TRUE_IDE_MODE | CFHOST_ENB, acdev->vbase + OP_MODE);
	FUNC1(acdev, CARD_DETECT_IRQ, 1);
	FUNC0(acdev, 1);
	FUNC9(&acdev->host->lock, flags);

	return ret;
}