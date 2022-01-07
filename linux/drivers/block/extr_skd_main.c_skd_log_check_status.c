
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct skd_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int dev_err (int *,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void skd_log_check_status(struct skd_device *skdev, u8 status, u8 key,
     u8 code, u8 qual, u8 fruc)
{

 if ((status == SAM_STAT_CHECK_CONDITION) && (key == 0x02)
     && (code == 0x04) && (qual == 0x06)) {
  dev_err(&skdev->pdev->dev,
   "*** LOST_WRITE_DATA ERROR *** key/asc/ascq/fruc %02x/%02x/%02x/%02x\n",
   key, code, qual, fruc);
 }
}
