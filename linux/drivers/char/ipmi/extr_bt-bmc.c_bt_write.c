
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt_bmc {int dummy; } ;


 int BT_BMC2HOST ;
 int bt_outb (struct bt_bmc*,int ,int ) ;

__attribute__((used)) static void bt_write(struct bt_bmc *bt_bmc, u8 c)
{
 bt_outb(bt_bmc, c, BT_BMC2HOST);
}
