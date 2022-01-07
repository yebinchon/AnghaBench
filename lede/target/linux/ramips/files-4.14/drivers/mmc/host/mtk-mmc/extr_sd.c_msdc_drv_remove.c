
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int bd_addr; int bd; int gpd_addr; int gpd; } ;
struct msdc_host {int mmc; TYPE_1__ dma; int card_delaywork; } ;
struct mmc_host {int dummy; } ;
struct gpd {int dummy; } ;
struct bd {int dummy; } ;


 int BUG_ON (int) ;
 int ERR_MSG (char*) ;
 int MAX_BD_NUM ;
 int MAX_GPD_NUM ;
 int cancel_delayed_work_sync (int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int mmc_free_host (int ) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (int ) ;
 int msdc_deinit_hw (struct msdc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int msdc_drv_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct msdc_host *host;

 mmc = platform_get_drvdata(pdev);
 BUG_ON(!mmc);

 host = mmc_priv(mmc);
 BUG_ON(!host);

 ERR_MSG("removed !!!");

 platform_set_drvdata(pdev, ((void*)0));
 mmc_remove_host(host->mmc);
 msdc_deinit_hw(host);

 cancel_delayed_work_sync(&host->card_delaywork);

 dma_free_coherent(&pdev->dev, MAX_GPD_NUM * sizeof(struct gpd),
     host->dma.gpd, host->dma.gpd_addr);
 dma_free_coherent(&pdev->dev, MAX_BD_NUM * sizeof(struct bd),
     host->dma.bd, host->dma.bd_addr);

 mmc_free_host(host->mmc);

 return 0;
}
