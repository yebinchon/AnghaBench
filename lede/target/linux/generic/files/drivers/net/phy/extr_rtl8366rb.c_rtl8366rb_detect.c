
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int parent; } ;


 int ENODEV ;

 int RTL8366RB_CHIP_ID_REG ;
 int RTL8366RB_CHIP_VERSION_CTRL_REG ;
 int RTL8366RB_CHIP_VERSION_MASK ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,int,int) ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;

__attribute__((used)) static int rtl8366rb_detect(struct rtl8366_smi *smi)
{
 u32 chip_id = 0;
 u32 chip_ver = 0;
 int ret;

 ret = rtl8366_smi_read_reg(smi, RTL8366RB_CHIP_ID_REG, &chip_id);
 if (ret) {
  dev_err(smi->parent, "unable to read chip id\n");
  return ret;
 }

 switch (chip_id) {
 case 128:
  break;
 default:
  dev_err(smi->parent, "unknown chip id (%04x)\n", chip_id);
  return -ENODEV;
 }

 ret = rtl8366_smi_read_reg(smi, RTL8366RB_CHIP_VERSION_CTRL_REG,
       &chip_ver);
 if (ret) {
  dev_err(smi->parent, "unable to read chip version\n");
  return ret;
 }

 dev_info(smi->parent, "RTL%04x ver. %u chip found\n",
   chip_id, chip_ver & RTL8366RB_CHIP_VERSION_MASK);

 return 0;
}
