
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MCFSIM_IMR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

void mcf_clrimr(int index)
{
 u32 imr;
 imr = __raw_readl(MCFSIM_IMR);
 __raw_writel(imr & ~(0x1 << index), MCFSIM_IMR);
}
