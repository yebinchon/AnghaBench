
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int parent; } ;


 int ENODEV ;


 int RTL8367_RTL_NO_REG ;
 int RTL8367_RTL_VER_MASK ;
 int RTL8367_RTL_VER_REG ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,char*,int) ;
 int rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;

__attribute__((used)) static int rtl8367_detect(struct rtl8366_smi *smi)
{
 u32 rtl_no = 0;
 u32 rtl_ver = 0;
 char *chip_name;
 int ret;

 ret = rtl8366_smi_read_reg(smi, RTL8367_RTL_NO_REG, &rtl_no);
 if (ret) {
  dev_err(smi->parent, "unable to read chip number\n");
  return ret;
 }

 switch (rtl_no) {
 case 128:
  chip_name = "8367R";
  break;
 case 129:
  chip_name = "8367M";
  break;
 default:
  dev_err(smi->parent, "unknown chip number (%04x)\n", rtl_no);
  return -ENODEV;
 }

 ret = rtl8366_smi_read_reg(smi, RTL8367_RTL_VER_REG, &rtl_ver);
 if (ret) {
  dev_err(smi->parent, "unable to read chip version\n");
  return ret;
 }

 dev_info(smi->parent, "RTL%s ver. %u chip found\n",
   chip_name, rtl_ver & RTL8367_RTL_VER_MASK);

 return 0;
}
