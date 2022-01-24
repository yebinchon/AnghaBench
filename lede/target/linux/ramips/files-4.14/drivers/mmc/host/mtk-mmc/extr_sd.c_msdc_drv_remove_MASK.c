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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  bd; int /*<<< orphan*/  gpd_addr; int /*<<< orphan*/  gpd; } ;
struct msdc_host {int /*<<< orphan*/  mmc; TYPE_1__ dma; int /*<<< orphan*/  card_delaywork; } ;
struct mmc_host {int dummy; } ;
struct gpd {int dummy; } ;
struct bd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_BD_NUM ; 
 int MAX_GPD_NUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct msdc_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msdc_host*) ; 
 struct mmc_host* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct mmc_host *mmc;
	struct msdc_host *host;

	mmc  = FUNC8(pdev);
	FUNC0(!mmc);

	host = FUNC5(mmc);
	FUNC0(!host);

	FUNC1("removed !!!");

	FUNC9(pdev, NULL);
	FUNC6(host->mmc);
	FUNC7(host);

	FUNC2(&host->card_delaywork);

	FUNC3(&pdev->dev, MAX_GPD_NUM * sizeof(struct gpd),
			  host->dma.gpd, host->dma.gpd_addr);
	FUNC3(&pdev->dev, MAX_BD_NUM  * sizeof(struct bd),
			  host->dma.bd,  host->dma.bd_addr);

	FUNC4(host->mmc);

	return 0;
}