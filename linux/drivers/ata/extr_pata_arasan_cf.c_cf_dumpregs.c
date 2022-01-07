
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct arasan_cf_dev {scalar_t__ vbase; TYPE_1__* host; } ;
struct TYPE_2__ {struct device* dev; } ;


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
 int dev_dbg (struct device*,char*,...) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void cf_dumpregs(struct arasan_cf_dev *acdev)
{
 struct device *dev = acdev->host->dev;

 dev_dbg(dev, ": =========== REGISTER DUMP ===========");
 dev_dbg(dev, ": CFI_STS: %x", readl(acdev->vbase + CFI_STS));
 dev_dbg(dev, ": IRQ_STS: %x", readl(acdev->vbase + IRQ_STS));
 dev_dbg(dev, ": IRQ_EN: %x", readl(acdev->vbase + IRQ_EN));
 dev_dbg(dev, ": OP_MODE: %x", readl(acdev->vbase + OP_MODE));
 dev_dbg(dev, ": CLK_CFG: %x", readl(acdev->vbase + CLK_CFG));
 dev_dbg(dev, ": TM_CFG: %x", readl(acdev->vbase + TM_CFG));
 dev_dbg(dev, ": XFER_CTR: %x", readl(acdev->vbase + XFER_CTR));
 dev_dbg(dev, ": GIRQ_STS: %x", readl(acdev->vbase + GIRQ_STS));
 dev_dbg(dev, ": GIRQ_STS_EN: %x", readl(acdev->vbase + GIRQ_STS_EN));
 dev_dbg(dev, ": GIRQ_SGN_EN: %x", readl(acdev->vbase + GIRQ_SGN_EN));
 dev_dbg(dev, ": =====================================");
}
