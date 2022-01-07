
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ANADIG_REG_CORE ;
 int BM_ANADIG_REG_CORE_FET_ODRIVE ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 int anatop ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void imx_anatop_enable_fet_odrive(bool enable)
{
 regmap_write(anatop, ANADIG_REG_CORE + (enable ? REG_SET : REG_CLR),
  BM_ANADIG_REG_CORE_FET_ODRIVE);
}
