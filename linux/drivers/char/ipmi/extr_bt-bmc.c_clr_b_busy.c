
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_bmc {int dummy; } ;


 int BT_CTRL ;
 int BT_CTRL_B_BUSY ;
 int bt_inb (struct bt_bmc*,int ) ;
 int bt_outb (struct bt_bmc*,int,int ) ;

__attribute__((used)) static void clr_b_busy(struct bt_bmc *bt_bmc)
{
 if (bt_inb(bt_bmc, BT_CTRL) & BT_CTRL_B_BUSY)
  bt_outb(bt_bmc, BT_CTRL_B_BUSY, BT_CTRL);
}
