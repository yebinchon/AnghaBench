
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int parent; } ;
typedef enum rtl8367_extif_mode { ____Placeholder_rtl8367_extif_mode } rtl8367_extif_mode ;


 int BIT (int) ;
 int EINVAL ;
 int REG_RMW (struct rtl8366_smi*,int ,int,int) ;
 int REG_WR (struct rtl8366_smi*,int ,int) ;
 int RTL8367_BYPASS_LINE_RATE_REG ;
 int RTL8367_CHIP_DEBUG0_DUMMY0 (int) ;
 int RTL8367_CHIP_DEBUG0_REG ;
 int RTL8367_CHIP_DEBUG1_REG ;
 int RTL8367_DIS_REG ;
 int RTL8367_DIS_RGMII_MASK ;
 int RTL8367_DIS_RGMII_SHIFT (int) ;
 int RTL8367_EXT_RGMXF_REG (int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int rtl8367_extif_set_mode(struct rtl8366_smi *smi, int id,
      enum rtl8367_extif_mode mode)
{
 int err;


 switch (mode) {
 case 131:
 case 130:
  REG_WR(smi, RTL8367_CHIP_DEBUG0_REG, 0x0367);
  REG_WR(smi, RTL8367_CHIP_DEBUG1_REG, 0x7777);
  break;

 case 129:
 case 128:
  REG_RMW(smi, RTL8367_BYPASS_LINE_RATE_REG,
   BIT((id + 1) % 2), BIT((id + 1) % 2));
  break;

 case 134:
  REG_RMW(smi, RTL8367_CHIP_DEBUG0_REG,
          RTL8367_CHIP_DEBUG0_DUMMY0(id),
   RTL8367_CHIP_DEBUG0_DUMMY0(id));
  REG_RMW(smi, RTL8367_EXT_RGMXF_REG(id), BIT(6), BIT(6));
  break;

 case 133:
 case 132:
 case 135:
  REG_RMW(smi, RTL8367_BYPASS_LINE_RATE_REG,
   BIT((id + 1) % 2), 0);
  REG_RMW(smi, RTL8367_EXT_RGMXF_REG(id), BIT(6), 0);
  break;

 default:
  dev_err(smi->parent,
   "invalid mode for external interface %d\n", id);
  return -EINVAL;
 }

 REG_RMW(smi, RTL8367_DIS_REG,
  RTL8367_DIS_RGMII_MASK << RTL8367_DIS_RGMII_SHIFT(id),
  mode << RTL8367_DIS_RGMII_SHIFT(id));

 return 0;
}
