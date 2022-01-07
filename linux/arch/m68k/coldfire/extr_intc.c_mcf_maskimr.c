
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int MCFSIM_IMR ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

void mcf_maskimr(unsigned int mask)
{
 u32 imr;
 imr = __raw_readl(MCFSIM_IMR);
 imr |= mask;
 __raw_writel(imr, MCFSIM_IMR);
}
