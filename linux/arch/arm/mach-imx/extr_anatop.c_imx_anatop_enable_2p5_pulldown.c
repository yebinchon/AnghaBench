
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANADIG_REG_2P5 ;
 int BM_ANADIG_REG_2P5_ENABLE_PULLDOWN ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 int anatop ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void imx_anatop_enable_2p5_pulldown(bool enable)
{
 regmap_write(anatop, ANADIG_REG_2P5 + (enable ? REG_SET : REG_CLR),
  BM_ANADIG_REG_2P5_ENABLE_PULLDOWN);
}
