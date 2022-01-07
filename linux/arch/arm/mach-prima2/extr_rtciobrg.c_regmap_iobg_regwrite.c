
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sirfsoc_rtc_iobrg_writel (unsigned int,unsigned int) ;

__attribute__((used)) static int regmap_iobg_regwrite(void *context, unsigned int reg,
       unsigned int val)
{
 sirfsoc_rtc_iobrg_writel(val, reg);
 return 0;
}
