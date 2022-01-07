
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int req_events; int has_event_buffer; } ;


 unsigned long* ipmi_ssif_lock_cond (struct ssif_info*,unsigned long*) ;
 int ipmi_ssif_unlock_cond (struct ssif_info*,unsigned long*) ;

__attribute__((used)) static void request_events(void *send_info)
{
 struct ssif_info *ssif_info = (struct ssif_info *) send_info;
 unsigned long oflags, *flags;

 if (!ssif_info->has_event_buffer)
  return;

 flags = ipmi_ssif_lock_cond(ssif_info, &oflags);
 ssif_info->req_events = 1;
 ipmi_ssif_unlock_cond(ssif_info, flags);
}
