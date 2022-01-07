
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int in_maintenance_mode; int req_events; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void set_maintenance_mode(void *send_info, bool enable)
{
 struct smi_info *smi_info = send_info;

 if (!enable)
  atomic_set(&smi_info->req_events, 0);
 smi_info->in_maintenance_mode = enable;
}
