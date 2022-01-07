
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TPS_LDO1_ENABLE ;
 unsigned int TPS_LDO1_OFF ;
 unsigned int TPS_LDO2_ENABLE ;
 unsigned int TPS_LP_COREOFF ;
 unsigned int TPS_VCORE_1_3V ;
 unsigned int TPS_VCORE_DISCH ;
 unsigned int TPS_VCORE_LP_1_0V ;
 int dvs_en ;
 int tps65010_config_vdcdc2 (unsigned int) ;
 int tps65010_config_vregs1 (unsigned int) ;

__attribute__((used)) static void osiris_dvs_tps_setdvs(bool on)
{
 unsigned vregs1 = 0, vdcdc2 = 0;

 if (!on) {
  vdcdc2 = TPS_VCORE_DISCH | TPS_LP_COREOFF;
  vregs1 = TPS_LDO1_OFF;
 }

 dvs_en = on;
 vdcdc2 |= TPS_VCORE_1_3V | TPS_VCORE_LP_1_0V;
 vregs1 |= TPS_LDO2_ENABLE | TPS_LDO1_ENABLE;

 tps65010_config_vregs1(vregs1);
 tps65010_config_vdcdc2(vdcdc2);
}
