
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi {int dummy; } ;
struct ipmi_recv_msg {int dummy; } ;


 scalar_t__ deliver_response (struct ipmi_smi*,struct ipmi_recv_msg*) ;
 int handled_local_responses ;
 int ipmi_inc_stat (struct ipmi_smi*,int ) ;
 int unhandled_local_responses ;

__attribute__((used)) static void deliver_local_response(struct ipmi_smi *intf,
       struct ipmi_recv_msg *msg)
{
 if (deliver_response(intf, msg))
  ipmi_inc_stat(intf, unhandled_local_responses);
 else
  ipmi_inc_stat(intf, handled_local_responses);
}
