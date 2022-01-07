
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hci_dev {int dummy; } ;
struct btmtksdio_dev {int func; int hdev; } ;


 int C_COM_DRV_OWN ;
 int C_FW_OWN_REQ_CLR ;
 int C_INT_CLR_CTRL ;
 int C_INT_EN_CLR ;
 int C_INT_EN_SET ;
 int MTK_REG_CHCR ;
 int MTK_REG_CHIER ;
 int MTK_REG_CHLPCR ;
 int MTK_REG_CSDIOCSR ;
 int MTK_SDIO_BLOCK_SIZE ;
 int RX_DONE_INT ;
 int SDIO_INT_CTL ;
 int SDIO_RE_INIT_EN ;
 int TX_EMPTY ;
 int TX_FIFO_OVERFLOW ;
 int bt_dev_err (int ,char*) ;
 int btmtksdio_drv_own_query ;
 int btmtksdio_interrupt ;
 struct btmtksdio_dev* hci_get_drvdata (struct hci_dev*) ;
 int readx_poll_timeout (int ,struct btmtksdio_dev*,int,int,int,int) ;
 int sdio_claim_host (int ) ;
 int sdio_claim_irq (int ,int ) ;
 int sdio_disable_func (int ) ;
 int sdio_enable_func (int ) ;
 int sdio_release_host (int ) ;
 int sdio_release_irq (int ) ;
 int sdio_set_block_size (int ,int ) ;
 int sdio_writel (int ,int,int ,int*) ;

__attribute__((used)) static int btmtksdio_open(struct hci_dev *hdev)
{
 struct btmtksdio_dev *bdev = hci_get_drvdata(hdev);
 int err;
 u32 status;

 sdio_claim_host(bdev->func);

 err = sdio_enable_func(bdev->func);
 if (err < 0)
  goto err_release_host;


 sdio_writel(bdev->func, C_FW_OWN_REQ_CLR, MTK_REG_CHLPCR, &err);
 if (err < 0)
  goto err_disable_func;

 err = readx_poll_timeout(btmtksdio_drv_own_query, bdev, status,
     status & C_COM_DRV_OWN, 2000, 1000000);
 if (err < 0) {
  bt_dev_err(bdev->hdev, "Cannot get ownership from device");
  goto err_disable_func;
 }


 sdio_writel(bdev->func, C_INT_EN_CLR, MTK_REG_CHLPCR, &err);
 if (err < 0)
  goto err_disable_func;

 sdio_writel(bdev->func, 0, MTK_REG_CHIER, &err);
 if (err < 0)
  goto err_disable_func;

 err = sdio_claim_irq(bdev->func, btmtksdio_interrupt);
 if (err < 0)
  goto err_disable_func;

 err = sdio_set_block_size(bdev->func, MTK_SDIO_BLOCK_SIZE);
 if (err < 0)
  goto err_release_irq;




 sdio_writel(bdev->func, SDIO_INT_CTL | SDIO_RE_INIT_EN,
      MTK_REG_CSDIOCSR, &err);
 if (err < 0)
  goto err_release_irq;


 sdio_writel(bdev->func, C_INT_CLR_CTRL, MTK_REG_CHCR, &err);
 if (err < 0)
  goto err_release_irq;


 sdio_writel(bdev->func, RX_DONE_INT | TX_EMPTY | TX_FIFO_OVERFLOW,
      MTK_REG_CHIER, &err);
 if (err < 0)
  goto err_release_irq;


 sdio_writel(bdev->func, C_INT_EN_SET, MTK_REG_CHLPCR, &err);
 if (err < 0)
  goto err_release_irq;

 sdio_release_host(bdev->func);

 return 0;

err_release_irq:
 sdio_release_irq(bdev->func);

err_disable_func:
 sdio_disable_func(bdev->func);

err_release_host:
 sdio_release_host(bdev->func);

 return err;
}
