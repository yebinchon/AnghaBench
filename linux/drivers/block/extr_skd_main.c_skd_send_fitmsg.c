
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct skd_fitmsg_context {int length; int mb_dma_address; scalar_t__ msg_buf; } ;
struct skd_device {int dbg_level; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int FIT_QCMD_MSGSIZE_128 ;
 int FIT_QCMD_MSGSIZE_256 ;
 int FIT_QCMD_MSGSIZE_512 ;
 int FIT_QCMD_MSGSIZE_64 ;
 int FIT_QCMD_QID_NORMAL ;
 int FIT_Q_COMMAND ;
 int SKD_WRITEQ (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,int,...) ;
 int dma_sync_single_for_device (int *,int ,int,int ) ;
 int skd_in_flight (struct skd_device*) ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void skd_send_fitmsg(struct skd_device *skdev,
       struct skd_fitmsg_context *skmsg)
{
 u64 qcmd;

 dev_dbg(&skdev->pdev->dev, "dma address %pad, busy=%d\n",
  &skmsg->mb_dma_address, skd_in_flight(skdev));
 dev_dbg(&skdev->pdev->dev, "msg_buf %p\n", skmsg->msg_buf);

 qcmd = skmsg->mb_dma_address;
 qcmd |= FIT_QCMD_QID_NORMAL;

 if (unlikely(skdev->dbg_level > 1)) {
  u8 *bp = (u8 *)skmsg->msg_buf;
  int i;
  for (i = 0; i < skmsg->length; i += 8) {
   dev_dbg(&skdev->pdev->dev, "msg[%2d] %8ph\n", i,
    &bp[i]);
   if (i == 0)
    i = 64 - 8;
  }
 }

 if (skmsg->length > 256)
  qcmd |= FIT_QCMD_MSGSIZE_512;
 else if (skmsg->length > 128)
  qcmd |= FIT_QCMD_MSGSIZE_256;
 else if (skmsg->length > 64)
  qcmd |= FIT_QCMD_MSGSIZE_128;
 else





  qcmd |= FIT_QCMD_MSGSIZE_64;

 dma_sync_single_for_device(&skdev->pdev->dev, skmsg->mb_dma_address,
       skmsg->length, DMA_TO_DEVICE);


 smp_wmb();

 SKD_WRITEQ(skdev, qcmd, FIT_Q_COMMAND);
}
