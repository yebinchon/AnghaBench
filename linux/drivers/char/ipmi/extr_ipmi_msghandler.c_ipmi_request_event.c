
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi {int send_info; TYPE_1__* handlers; int in_shutdown; scalar_t__ maintenance_mode_enable; } ;
struct TYPE_2__ {int (* request_events ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void ipmi_request_event(struct ipmi_smi *intf)
{

 if (intf->maintenance_mode_enable)
  return;

 if (!intf->in_shutdown)
  intf->handlers->request_events(intf->send_info);
}
