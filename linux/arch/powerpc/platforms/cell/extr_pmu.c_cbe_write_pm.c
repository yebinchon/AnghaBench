
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum pm_reg_name { ____Placeholder_pm_reg_name } pm_reg_name ;


 int WRITE_WO_MMIO (int const,int ) ;
void cbe_write_pm(u32 cpu, enum pm_reg_name reg, u32 val)
{
 switch (reg) {
 case 133:
  WRITE_WO_MMIO(133, val);
  break;

 case 135:
  WRITE_WO_MMIO(135, val);
  break;

 case 128:
  WRITE_WO_MMIO(128, val);
  break;

 case 134:
  WRITE_WO_MMIO(134, val);
  break;

 case 129:
  WRITE_WO_MMIO(129, val);
  break;

 case 132:
  WRITE_WO_MMIO(132, val);
  break;

 case 131:
  WRITE_WO_MMIO(131, val);
  break;

 case 130:
  WRITE_WO_MMIO(130, val);
  break;
 }
}
