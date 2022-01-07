
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sns_info {int mask; scalar_t__ type; scalar_t__ stat; scalar_t__ key; scalar_t__ asc; scalar_t__ ascq; scalar_t__ action; } ;
struct skd_device {TYPE_1__* pdev; } ;
struct fit_comp_error_info {scalar_t__ key; scalar_t__ code; scalar_t__ qual; scalar_t__ type; int fruc; } ;
typedef enum skd_check_status_action { ____Placeholder_skd_check_status_action } skd_check_status_action ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct sns_info*) ;
 int SKD_CHECK_STATUS_REPORT_ERROR ;
 int SKD_CHECK_STATUS_REPORT_GOOD ;
 scalar_t__ SKD_CHECK_STATUS_REPORT_SMART_ALERT ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 struct sns_info* skd_chkstat_table ;

__attribute__((used)) static enum skd_check_status_action
skd_check_status(struct skd_device *skdev,
   u8 cmp_status, struct fit_comp_error_info *skerr)
{
 int i;

 dev_err(&skdev->pdev->dev, "key/asc/ascq/fruc %02x/%02x/%02x/%02x\n",
  skerr->key, skerr->code, skerr->qual, skerr->fruc);

 dev_dbg(&skdev->pdev->dev,
  "stat: t=%02x stat=%02x k=%02x c=%02x q=%02x fruc=%02x\n",
  skerr->type, cmp_status, skerr->key, skerr->code, skerr->qual,
  skerr->fruc);


 for (i = 0; i < ARRAY_SIZE(skd_chkstat_table); i++) {
  struct sns_info *sns = &skd_chkstat_table[i];

  if (sns->mask & 0x10)
   if (skerr->type != sns->type)
    continue;

  if (sns->mask & 0x08)
   if (cmp_status != sns->stat)
    continue;

  if (sns->mask & 0x04)
   if (skerr->key != sns->key)
    continue;

  if (sns->mask & 0x02)
   if (skerr->code != sns->asc)
    continue;

  if (sns->mask & 0x01)
   if (skerr->qual != sns->ascq)
    continue;

  if (sns->action == SKD_CHECK_STATUS_REPORT_SMART_ALERT) {
   dev_err(&skdev->pdev->dev,
    "SMART Alert: sense key/asc/ascq %02x/%02x/%02x\n",
    skerr->key, skerr->code, skerr->qual);
  }
  return sns->action;
 }




 if (cmp_status) {
  dev_dbg(&skdev->pdev->dev, "status check: error\n");
  return SKD_CHECK_STATUS_REPORT_ERROR;
 }

 dev_dbg(&skdev->pdev->dev, "status check good default\n");
 return SKD_CHECK_STATUS_REPORT_GOOD;
}
