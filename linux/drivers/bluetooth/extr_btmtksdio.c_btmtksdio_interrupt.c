
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sdio_func {int dummy; } ;
struct btmtksdio_dev {int dev; TYPE_2__* hdev; int tx_work; int func; } ;
struct TYPE_5__ {int err_rx; } ;
struct TYPE_6__ {TYPE_1__ stat; } ;


 int C_INT_EN_CLR ;
 int C_INT_EN_SET ;
 int FW_OWN_BACK_INT ;
 int MTK_REG_CHISR ;
 int MTK_REG_CHLPCR ;
 int RX_DONE_INT ;
 int RX_PKT_LEN ;
 int TX_EMPTY ;
 int TX_FIFO_OVERFLOW ;
 int bt_dev_dbg (TYPE_2__*,char*) ;
 int bt_dev_err (TYPE_2__*,char*) ;
 int bt_dev_warn (TYPE_2__*,char*) ;
 scalar_t__ btmtksdio_rx_packet (struct btmtksdio_dev*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int schedule_work (int *) ;
 int sdio_claim_host (int ) ;
 struct btmtksdio_dev* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_readl (struct sdio_func*,int ,int *) ;
 int sdio_release_host (int ) ;
 int sdio_writel (struct sdio_func*,int,int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void btmtksdio_interrupt(struct sdio_func *func)
{
 struct btmtksdio_dev *bdev = sdio_get_drvdata(func);
 u32 int_status;
 u16 rx_size;







 sdio_release_host(bdev->func);

 pm_runtime_get_sync(bdev->dev);

 sdio_claim_host(bdev->func);


 sdio_writel(func, C_INT_EN_CLR, MTK_REG_CHLPCR, 0);

 int_status = sdio_readl(func, MTK_REG_CHISR, ((void*)0));
 sdio_writel(func, int_status, MTK_REG_CHISR, ((void*)0));

 if (unlikely(!int_status))
  bt_dev_err(bdev->hdev, "CHISR is 0");

 if (int_status & FW_OWN_BACK_INT)
  bt_dev_dbg(bdev->hdev, "Get fw own back");

 if (int_status & TX_EMPTY)
  schedule_work(&bdev->tx_work);
 else if (unlikely(int_status & TX_FIFO_OVERFLOW))
  bt_dev_warn(bdev->hdev, "Tx fifo overflow");

 if (int_status & RX_DONE_INT) {
  rx_size = (int_status & RX_PKT_LEN) >> 16;

  if (btmtksdio_rx_packet(bdev, rx_size) < 0)
   bdev->hdev->stat.err_rx++;
 }


 sdio_writel(func, C_INT_EN_SET, MTK_REG_CHLPCR, 0);

 pm_runtime_mark_last_busy(bdev->dev);
 pm_runtime_put_autosuspend(bdev->dev);
}
