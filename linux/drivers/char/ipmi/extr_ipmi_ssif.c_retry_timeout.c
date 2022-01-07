
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ssif_info {int waiting_alert; scalar_t__ stopping; } ;


 struct ssif_info* from_timer (int ,struct timer_list*,int ) ;
 unsigned long* ipmi_ssif_lock_cond (struct ssif_info*,unsigned long*) ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 int retry_timer ;
 struct ssif_info* ssif_info ;
 int start_get (struct ssif_info*) ;

__attribute__((used)) static void retry_timeout(struct timer_list *t)
{
 struct ssif_info *ssif_info = from_timer(ssif_info, t, retry_timer);
 unsigned long oflags, *flags;
 bool waiting;

 if (ssif_info->stopping)
  return;

 flags = ipmi_ssif_lock_cond(ssif_info, &oflags);
 waiting = ssif_info->waiting_alert;
 ssif_info->waiting_alert = 0;
 ipmi_ssif_unlock_cond(ssif_info, flags);

 if (waiting)
  start_get(ssif_info);
}
