
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long imx_iomuxv1_readl (unsigned int) ;
 int imx_iomuxv1_writel (unsigned long,unsigned int) ;

__attribute__((used)) static inline void imx_iomuxv1_rmwl(unsigned offset,
  unsigned long mask, unsigned long value)
{
 unsigned long reg = imx_iomuxv1_readl(offset);

 reg &= ~mask;
 reg |= value;

 imx_iomuxv1_writel(reg, offset);
}
