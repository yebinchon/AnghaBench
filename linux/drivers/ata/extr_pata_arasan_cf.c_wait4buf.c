
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct arasan_cf_dev {int dma_status; TYPE_3__* host; TYPE_2__* qc; int cf_completion; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ tf; } ;


 int ATA_DMA_ERR ;
 int ATA_TFLAG_WRITE ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int TIMEOUT ;
 int dev_err (int ,char*,char*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static inline int wait4buf(struct arasan_cf_dev *acdev)
{
 if (!wait_for_completion_timeout(&acdev->cf_completion, TIMEOUT)) {
  u32 rw = acdev->qc->tf.flags & ATA_TFLAG_WRITE;

  dev_err(acdev->host->dev, "%s TimeOut", rw ? "write" : "read");
  return -ETIMEDOUT;
 }


 if (acdev->dma_status & ATA_DMA_ERR)
  return -EAGAIN;

 return 0;
}
