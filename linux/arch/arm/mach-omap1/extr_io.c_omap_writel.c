
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int OMAP1_IO_ADDRESS (int ) ;
 int __raw_writel (int ,int ) ;

void omap_writel(u32 v, u32 pa)
{
 __raw_writel(v, OMAP1_IO_ADDRESS(pa));
}
