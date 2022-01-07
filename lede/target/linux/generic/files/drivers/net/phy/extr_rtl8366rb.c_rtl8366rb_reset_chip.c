
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int dummy; } ;


 int EIO ;
 int RTL8366RB_CHIP_CTRL_RESET_HW ;
 int RTL8366RB_RESET_CTRL_REG ;
 int msleep (int) ;
 int printk (char*) ;
 scalar_t__ rtl8366_smi_read_reg (struct rtl8366_smi*,int ,int*) ;
 int rtl8366_smi_write_reg_noack (struct rtl8366_smi*,int ,int) ;

__attribute__((used)) static int rtl8366rb_reset_chip(struct rtl8366_smi *smi)
{
 int timeout = 10;
 u32 data;

 rtl8366_smi_write_reg_noack(smi, RTL8366RB_RESET_CTRL_REG,
         RTL8366RB_CHIP_CTRL_RESET_HW);
 do {
  msleep(1);
  if (rtl8366_smi_read_reg(smi, RTL8366RB_RESET_CTRL_REG, &data))
   return -EIO;

  if (!(data & RTL8366RB_CHIP_CTRL_RESET_HW))
   break;
 } while (--timeout);

 if (!timeout) {
  printk("Timeout waiting for the switch to reset\n");
  return -EIO;
 }

 return 0;
}
