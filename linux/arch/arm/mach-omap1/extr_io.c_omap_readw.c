
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP1_IO_ADDRESS (int ) ;
 int __raw_readw (int ) ;

u16 omap_readw(u32 pa)
{
 return __raw_readw(OMAP1_IO_ADDRESS(pa));
}
