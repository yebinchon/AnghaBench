
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int req_events; int has_event_buffer; } ;


 int atomic_set (int *,int) ;

__attribute__((used)) static void request_events(void *send_info)
{
 struct smi_info *smi_info = send_info;

 if (!smi_info->has_event_buffer)
  return;

 atomic_set(&smi_info->req_events, 1);
}
