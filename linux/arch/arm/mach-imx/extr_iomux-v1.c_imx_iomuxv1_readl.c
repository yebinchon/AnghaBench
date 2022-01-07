
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int imx_iomuxv1_baseaddr ;
 unsigned long imx_readl (unsigned int) ;

__attribute__((used)) static inline unsigned long imx_iomuxv1_readl(unsigned offset)
{
 return imx_readl(imx_iomuxv1_baseaddr + offset);
}
