
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int imx_iomuxv1_baseaddr ;
 int imx_writel (unsigned long,unsigned int) ;

__attribute__((used)) static inline void imx_iomuxv1_writel(unsigned long val, unsigned offset)
{
 imx_writel(val, imx_iomuxv1_baseaddr + offset);
}
