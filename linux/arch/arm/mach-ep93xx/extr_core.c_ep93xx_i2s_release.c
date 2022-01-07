
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EP93XX_SYSCON_DEVCFG_I2S_MASK ;
 int ep93xx_devcfg_clear_bits (int ) ;

void ep93xx_i2s_release(void)
{
 ep93xx_devcfg_clear_bits(EP93XX_SYSCON_DEVCFG_I2S_MASK);
}
