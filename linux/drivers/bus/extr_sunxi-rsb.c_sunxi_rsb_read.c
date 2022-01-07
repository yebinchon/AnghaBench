
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sunxi_rsb {int lock; scalar_t__ regs; int dev; } ;


 int EINVAL ;
 scalar_t__ RSB_ADDR ;
 scalar_t__ RSB_CMD ;
 int RSB_CMD_RD16 ;
 int RSB_CMD_RD32 ;
 int RSB_CMD_RD8 ;
 scalar_t__ RSB_DAR ;
 int RSB_DAR_RTA (int ) ;
 scalar_t__ RSB_DATA ;
 int _sunxi_rsb_run_xfer (struct sunxi_rsb*) ;
 int dev_err (int ,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
     u32 *buf, size_t len)
{
 u32 cmd;
 int ret;

 if (!buf)
  return -EINVAL;

 switch (len) {
 case 1:
  cmd = RSB_CMD_RD8;
  break;
 case 2:
  cmd = RSB_CMD_RD16;
  break;
 case 4:
  cmd = RSB_CMD_RD32;
  break;
 default:
  dev_err(rsb->dev, "Invalid access width: %zd\n", len);
  return -EINVAL;
 }

 mutex_lock(&rsb->lock);

 writel(addr, rsb->regs + RSB_ADDR);
 writel(RSB_DAR_RTA(rtaddr), rsb->regs + RSB_DAR);
 writel(cmd, rsb->regs + RSB_CMD);

 ret = _sunxi_rsb_run_xfer(rsb);
 if (ret)
  goto unlock;

 *buf = readl(rsb->regs + RSB_DATA);

unlock:
 mutex_unlock(&rsb->lock);

 return ret;
}
