
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 scalar_t__ sirfsoc_rtc_iobrg_readl (unsigned int) ;

__attribute__((used)) static int regmap_iobg_regread(void *context, unsigned int reg,
      unsigned int *val)
{
 *val = (u32)sirfsoc_rtc_iobrg_readl(reg);
 return 0;
}
