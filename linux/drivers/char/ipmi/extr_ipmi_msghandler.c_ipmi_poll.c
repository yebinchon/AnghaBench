
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_smi {int send_info; TYPE_1__* handlers; } ;
struct TYPE_2__ {int (* poll ) (int ) ;} ;


 int handle_new_recv_msgs (struct ipmi_smi*) ;
 int stub1 (int ) ;

__attribute__((used)) static void ipmi_poll(struct ipmi_smi *intf)
{
 if (intf->handlers->poll)
  intf->handlers->poll(intf->send_info);

 handle_new_recv_msgs(intf);
}
