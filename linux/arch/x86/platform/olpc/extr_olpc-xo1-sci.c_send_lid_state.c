
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; int sw; } ;


 int SW_LID ;
 int input_report_switch (TYPE_1__*,int ,int) ;
 int input_sync (TYPE_1__*) ;
 int lid_open ;
 TYPE_1__* lid_switch_idev ;
 int pm_wakeup_event (int *,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void send_lid_state(void)
{
 if (!!test_bit(SW_LID, lid_switch_idev->sw) == !lid_open)
  return;

 input_report_switch(lid_switch_idev, SW_LID, !lid_open);
 input_sync(lid_switch_idev);
 pm_wakeup_event(&lid_switch_idev->dev, 0);
}
