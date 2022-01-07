
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8367b_initval {int dummy; } ;
struct rtl8366_smi {int parent; } ;


 int ARRAY_SIZE (struct rtl8367b_initval*) ;
 int ENODEV ;
 int REG_RD (struct rtl8366_smi*,int ,int*) ;
 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 int RTL8367B_CHIP_VER_REG ;
 int RTL8367B_CHIP_VER_RLVID_MASK ;
 int RTL8367B_CHIP_VER_RLVID_SHIFT ;
 int RTL8367B_RTL_MAGIC_ID_REG ;
 int RTL8367B_RTL_MAGIC_ID_VAL ;
 int dev_err (int ,char*,int) ;
 int rtl8367b_write_initvals (struct rtl8366_smi*,struct rtl8367b_initval const*,int) ;
 struct rtl8367b_initval* rtl8367r_vb_initvals_0 ;
 struct rtl8367b_initval* rtl8367r_vb_initvals_1 ;

__attribute__((used)) static int rtl8367b_init_regs(struct rtl8366_smi *smi)
{
 const struct rtl8367b_initval *initvals;
 u32 chip_ver;
 u32 rlvid;
 int count;
 int err;

 REG_WR(smi, RTL8367B_RTL_MAGIC_ID_REG, RTL8367B_RTL_MAGIC_ID_VAL);
 REG_RD(smi, RTL8367B_CHIP_VER_REG, &chip_ver);

 rlvid = (chip_ver >> RTL8367B_CHIP_VER_RLVID_SHIFT) &
  RTL8367B_CHIP_VER_RLVID_MASK;

 switch (rlvid) {
 case 0:
  initvals = rtl8367r_vb_initvals_0;
  count = ARRAY_SIZE(rtl8367r_vb_initvals_0);
  break;

 case 1:
  initvals = rtl8367r_vb_initvals_1;
  count = ARRAY_SIZE(rtl8367r_vb_initvals_1);
  break;

 default:
  dev_err(smi->parent, "unknow rlvid %u\n", rlvid);
  return -ENODEV;
 }



 return rtl8367b_write_initvals(smi, initvals, count);
}
