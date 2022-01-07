
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ANADIG_ANA_MISC0 ;
 int ANADIG_REG_2P5 ;
 int BM_ANADIG_ANA_MISC0_STOP_MODE_CONFIG ;
 int BM_ANADIG_REG_2P5_ENABLE_WEAK_LINREG ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 int anatop ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int,int ) ;

__attribute__((used)) static void imx_anatop_enable_weak2p5(bool enable)
{
 u32 reg, val;

 regmap_read(anatop, ANADIG_ANA_MISC0, &val);


 reg = ANADIG_REG_2P5;
 reg += (enable && (val & BM_ANADIG_ANA_MISC0_STOP_MODE_CONFIG) == 0) ?
  REG_SET : REG_CLR;
 regmap_write(anatop, reg, BM_ANADIG_REG_2P5_ENABLE_WEAK_LINREG);
}
