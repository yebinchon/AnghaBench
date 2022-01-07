
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_rsb {scalar_t__ regs; } ;


 int ETIMEDOUT ;
 scalar_t__ RSB_DMCR ;
 int RSB_DMCR_DEVICE_START ;
 int RSB_DMCR_DEV_ADDR ;
 int RSB_DMCR_MODE_DATA ;
 int RSB_DMCR_MODE_REG ;
 scalar_t__ RSB_INTS ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_rsb_init_device_mode(struct sunxi_rsb *rsb)
{
 int ret = 0;
 u32 reg;


 writel(RSB_DMCR_DEVICE_START | RSB_DMCR_MODE_DATA |
        RSB_DMCR_MODE_REG | RSB_DMCR_DEV_ADDR, rsb->regs + RSB_DMCR);

 readl_poll_timeout(rsb->regs + RSB_DMCR, reg,
      !(reg & RSB_DMCR_DEVICE_START), 100, 250000);
 if (reg & RSB_DMCR_DEVICE_START)
  ret = -ETIMEDOUT;


 writel(readl(rsb->regs + RSB_INTS), rsb->regs + RSB_INTS);

 return ret;
}
