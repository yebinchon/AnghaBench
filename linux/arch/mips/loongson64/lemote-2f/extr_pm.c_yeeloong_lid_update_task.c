
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int BIT_LID_DETECT_ON ;
 int yeeloong_report_lid_status (int ) ;

__attribute__((used)) static void yeeloong_lid_update_task(struct work_struct *work)
{
 if (yeeloong_report_lid_status)
  yeeloong_report_lid_status(BIT_LID_DETECT_ON);
}
