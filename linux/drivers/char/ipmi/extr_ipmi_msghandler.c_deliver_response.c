
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_user {int handler_data; TYPE_1__* handler; } ;
struct ipmi_smi {int (* null_user_handler ) (struct ipmi_smi*,struct ipmi_recv_msg*) ;} ;
struct ipmi_recv_msg {int user; } ;
struct TYPE_2__ {int (* ipmi_recv_hndl ) (struct ipmi_recv_msg*,int ) ;} ;


 int EINVAL ;
 struct ipmi_user* acquire_ipmi_user (int ,int*) ;
 int ipmi_free_recv_msg (struct ipmi_recv_msg*) ;
 scalar_t__ oops_in_progress ;
 int release_ipmi_user (struct ipmi_user*,int) ;
 int stub1 (struct ipmi_smi*,struct ipmi_recv_msg*) ;
 int stub2 (struct ipmi_recv_msg*,int ) ;

__attribute__((used)) static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
{
 int rv = 0;

 if (!msg->user) {

  if (intf->null_user_handler) {
   intf->null_user_handler(intf, msg);
  } else {

   rv = -EINVAL;
  }
  ipmi_free_recv_msg(msg);
 } else if (oops_in_progress) {





  ipmi_free_recv_msg(msg);
 } else {
  int index;
  struct ipmi_user *user = acquire_ipmi_user(msg->user, &index);

  if (user) {
   user->handler->ipmi_recv_hndl(msg, user->handler_data);
   release_ipmi_user(user, index);
  } else {

   ipmi_free_recv_msg(msg);
   rv = -EINVAL;
  }
 }

 return rv;
}
