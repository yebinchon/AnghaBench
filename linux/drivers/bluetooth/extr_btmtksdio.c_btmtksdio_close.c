
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int func; int hdev; } ;


 int C_COM_DRV_OWN ;
 int C_FW_OWN_REQ_SET ;
 int C_INT_EN_CLR ;
 int MTK_REG_CHLPCR ;
 int bt_dev_err (int ,char*) ;
 int btmtksdio_drv_own_query ;
 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int readx_poll_timeout (int ,struct btmtksdio_dev*,int,int,int,int) ;
 int sdio_claim_host (int ) ;
 int sdio_disable_func (int ) ;
 int sdio_release_host (int ) ;
 int sdio_release_irq (int ) ;
 int sdio_writel (int ,int ,int ,int *) ;

__attribute__((used)) static int btmtksdio_close(struct hci_dev *hdev)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);
 u32 status;
 int err;

 sdio_claim_host(bdev->func);


 sdio_writel(bdev->func, C_INT_EN_CLR, MTK_REG_CHLPCR, ((void*)0));

 sdio_release_irq(bdev->func);


 sdio_writel(bdev->func, C_FW_OWN_REQ_SET, MTK_REG_CHLPCR, ((void*)0));

 err = readx_poll_timeout(btmtksdio_drv_own_query, bdev, status,
     !(status & C_COM_DRV_OWN), 2000, 1000000);
 if (err < 0)
  bt_dev_err(bdev->hdev, "Cannot return ownership to device");

 sdio_disable_func(bdev->func);

 sdio_release_host(bdev->func);

 return 0;
}
