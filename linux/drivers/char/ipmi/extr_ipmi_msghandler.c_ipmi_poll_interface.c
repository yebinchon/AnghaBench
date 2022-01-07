
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {int intf; } ;


 int ipmi_poll (int ) ;

void ipmi_poll_interface(struct ipmi_user *user)
{
 ipmi_poll(user->intf);
}
