
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AU1300_GPIC_ADDR ;
 scalar_t__ AU1300_GPIC_DMASEL ;
 unsigned long __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 int wmb () ;

void au1300_set_dbdma_gpio(int dchan, unsigned int gpio)
{
 unsigned long r;

 if ((dchan >= 0) && (dchan <= 1)) {
  r = __raw_readl(AU1300_GPIC_ADDR + AU1300_GPIC_DMASEL);
  r &= ~(0xff << (8 * dchan));
  r |= (gpio & 0x7f) << (8 * dchan);
  __raw_writel(r, AU1300_GPIC_ADDR + AU1300_GPIC_DMASEL);
  wmb();
 }
}
