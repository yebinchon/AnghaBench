
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ssif_info {int req_flags; scalar_t__ watch_timeout; int watch_timer; scalar_t__ stopping; } ;


 scalar_t__ SSIF_IDLE (struct ssif_info*) ;
 struct ssif_info* from_timer (int ,struct timer_list*,int ) ;
 unsigned long* ipmi_ssif_lock_cond (struct ssif_info*,unsigned long*) ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct ssif_info* ssif_info ;
 int start_flag_fetch (struct ssif_info*,unsigned long*) ;
 int watch_timer ;

__attribute__((used)) static void watch_timeout(struct timer_list *t)
{
 struct ssif_info *ssif_info = from_timer(ssif_info, t, watch_timer);
 unsigned long oflags, *flags;

 if (ssif_info->stopping)
  return;

 flags = ipmi_ssif_lock_cond(ssif_info, &oflags);
 if (ssif_info->watch_timeout) {
  mod_timer(&ssif_info->watch_timer,
     jiffies + ssif_info->watch_timeout);
  if (SSIF_IDLE(ssif_info)) {
   start_flag_fetch(ssif_info, flags);
   return;
  }
  ssif_info->req_flags = 1;
 }
 ipmi_ssif_unlock_cond(ssif_info, flags);
}
