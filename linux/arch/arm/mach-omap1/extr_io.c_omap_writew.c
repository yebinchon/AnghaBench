
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP1_IO_ADDRESS (int ) ;
 int __raw_writew (int ,int ) ;

void omap_writew(u16 v, u32 pa)
{
 __raw_writew(v, OMAP1_IO_ADDRESS(pa));
}
