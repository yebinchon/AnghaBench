
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt_bmc {int dummy; } ;


 int BT_BMC2HOST ;
 int bt_inb (struct bt_bmc*,int ) ;

__attribute__((used)) static u8 bt_read(struct bt_bmc *bt_bmc)
{
 return bt_inb(bt_bmc, BT_BMC2HOST);
}
