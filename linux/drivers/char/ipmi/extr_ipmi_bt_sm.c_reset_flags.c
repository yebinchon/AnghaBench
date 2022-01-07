
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si_sm_data {TYPE_1__* io; } ;
struct TYPE_2__ {int dev; } ;


 int BT_BMC_HWRST ;
 int BT_CLR_WR_PTR ;
 int BT_CONTROL (int) ;
 int BT_H_BUSY ;
 int BT_INTMASK_W (int ) ;
 int BT_SMS_ATN ;
 int BT_STATUS ;
 scalar_t__ bt_debug ;
 int dev_dbg (int ,char*,int ) ;
 int status2txt (int) ;

__attribute__((used)) static void reset_flags(struct si_sm_data *bt)
{
 if (bt_debug)
  dev_dbg(bt->io->dev, "flag reset %s\n", status2txt(BT_STATUS));
 if (BT_STATUS & BT_H_BUSY)
  BT_CONTROL(BT_H_BUSY);
 BT_CONTROL(BT_CLR_WR_PTR);
 BT_CONTROL(BT_SMS_ATN);
 BT_INTMASK_W(BT_BMC_HWRST);
}
