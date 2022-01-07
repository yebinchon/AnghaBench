
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_recv_msg {int (* done ) (struct ipmi_recv_msg*) ;TYPE_1__* user; } ;
struct TYPE_2__ {int refcount; } ;


 int free_user ;
 int kref_put (int *,int ) ;
 int stub1 (struct ipmi_recv_msg*) ;

void ipmi_free_recv_msg(struct ipmi_recv_msg *msg)
{
 if (msg->user)
  kref_put(&msg->user->refcount, free_user);
 msg->done(msg);
}
