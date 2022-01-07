
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssif_info {scalar_t__ ssif_state; int stopping; scalar_t__ thread; int wake_thread; int retry_timer; int watch_timer; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SSIF_NORMAL ;
 int complete (int *) ;
 int del_timer_sync (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int device_remove_group (int *,int *) ;
 int ipmi_ssif_dev_attr_group ;
 int kthread_stop (scalar_t__) ;
 int schedule_timeout (int) ;

__attribute__((used)) static void shutdown_ssif(void *send_info)
{
 struct ssif_info *ssif_info = send_info;

 device_remove_group(&ssif_info->client->dev, &ipmi_ssif_dev_attr_group);
 dev_set_drvdata(&ssif_info->client->dev, ((void*)0));


 while (ssif_info->ssif_state != SSIF_NORMAL)
  schedule_timeout(1);

 ssif_info->stopping = 1;
 del_timer_sync(&ssif_info->watch_timer);
 del_timer_sync(&ssif_info->retry_timer);
 if (ssif_info->thread) {
  complete(&ssif_info->wake_thread);
  kthread_stop(ssif_info->thread);
 }
}
