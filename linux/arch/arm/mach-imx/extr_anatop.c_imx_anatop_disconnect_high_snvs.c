
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANADIG_ANA_MISC0 ;
 int BM_ANADIG_ANA_MISC0_DISCON_HIGH_SNVS ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 int anatop ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void imx_anatop_disconnect_high_snvs(bool enable)
{
 regmap_write(anatop, ANADIG_ANA_MISC0 + (enable ? REG_SET : REG_CLR),
  BM_ANADIG_ANA_MISC0_DISCON_HIGH_SNVS);
}
