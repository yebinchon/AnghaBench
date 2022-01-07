
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct skd_device {void* last_mtd; int proto_ver; int dev_max_queue_depth; void* devno; int connect_time_stamp; int drive_jiffies; TYPE_1__* pdev; int cq_dma_address; int state; } ;
struct TYPE_2__ {int dev; } ;


 int FIT_MSG_FROM_DEVICE ;
 int FIT_MSG_TO_DEVICE ;
 int FIT_MSG_TO_DEVICE_ARG ;
 void* FIT_MXD_CONS (int,int ,void*) ;
 int FIT_MXD_DATA (void*) ;
 int FIT_MXD_TYPE (void*) ;
 int FIT_PROTOCOL_MAJOR_VER (void*) ;
 int FIT_PROTOCOL_VERSION_1 ;
 int SKD_DRVR_STATE_PROTOCOL_MISMATCH ;
 void* SKD_N_COMPLETION_ENTRY ;
 void* SKD_READL (struct skd_device*,int ) ;
 int SKD_WRITEL (struct skd_device*,void*,int ) ;
 int SKD_WRITEQ (struct skd_device*,int ,int ) ;
 int dev_dbg (int *,char*,void*,void*) ;
 int dev_err (int *,char*,...) ;
 int ktime_get_real_seconds () ;
 int skd_reset_skcomp (struct skd_device*) ;
 int skd_soft_reset (struct skd_device*) ;

__attribute__((used)) static void skd_isr_msg_from_dev(struct skd_device *skdev)
{
 u32 mfd;
 u32 mtd;
 u32 data;

 mfd = SKD_READL(skdev, FIT_MSG_FROM_DEVICE);

 dev_dbg(&skdev->pdev->dev, "mfd=0x%x last_mtd=0x%x\n", mfd,
  skdev->last_mtd);


 if (FIT_MXD_TYPE(mfd) != FIT_MXD_TYPE(skdev->last_mtd))
  return;

 switch (FIT_MXD_TYPE(mfd)) {
 case 131:
  skdev->proto_ver = FIT_PROTOCOL_MAJOR_VER(mfd);

  if (skdev->proto_ver != FIT_PROTOCOL_VERSION_1) {
   dev_err(&skdev->pdev->dev, "protocol mismatch\n");
   dev_err(&skdev->pdev->dev, "  got=%d support=%d\n",
    skdev->proto_ver, FIT_PROTOCOL_VERSION_1);
   dev_err(&skdev->pdev->dev, "  please upgrade driver\n");
   skdev->state = SKD_DRVR_STATE_PROTOCOL_MISMATCH;
   skd_soft_reset(skdev);
   break;
  }
  mtd = FIT_MXD_CONS(130, 0, 0);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;
  break;

 case 130:
  skdev->dev_max_queue_depth = FIT_MXD_DATA(mfd);
  mtd = FIT_MXD_CONS(128, 0,
       SKD_N_COMPLETION_ENTRY);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;
  break;

 case 128:
  SKD_WRITEQ(skdev, skdev->cq_dma_address, FIT_MSG_TO_DEVICE_ARG);
  mtd = FIT_MXD_CONS(129, 0, 0);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;
  break;

 case 129:
  skd_reset_skcomp(skdev);
  mtd = FIT_MXD_CONS(134, 0, skdev->devno);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;
  break;

 case 134:

  skdev->connect_time_stamp = (u32)ktime_get_real_seconds();
  data = skdev->connect_time_stamp & 0xFFFF;
  mtd = FIT_MXD_CONS(132, 0, data);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;
  break;

 case 132:
  skdev->drive_jiffies = FIT_MXD_DATA(mfd);
  data = (skdev->connect_time_stamp >> 16) & 0xFFFF;
  mtd = FIT_MXD_CONS(133, 0, data);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;
  break;

 case 133:
  skdev->drive_jiffies |= (FIT_MXD_DATA(mfd) << 16);
  mtd = FIT_MXD_CONS(135, 0, 0);
  SKD_WRITEL(skdev, mtd, FIT_MSG_TO_DEVICE);
  skdev->last_mtd = mtd;

  dev_err(&skdev->pdev->dev, "Time sync driver=0x%x device=0x%x\n",
   skdev->connect_time_stamp, skdev->drive_jiffies);
  break;

 case 135:
  skdev->last_mtd = 0;



  break;

 default:
  break;
 }
}
